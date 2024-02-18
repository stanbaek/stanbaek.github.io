%{
MATLAB Script/Funtion
File: FrequencyResponse.m
Author: Stanley Baek
Affiliation: United States Air Force Academy
Date: April 5, 2022
 
Description:
This script/function plots complex function in the 3-dimesional space.

Simplified BSD License (FreeBSD License)
Copyright (c) 2022 Stanley S. Baek, All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are
those of the authors and should not be interpreted as representing official
policies, either expressed or implied, of the FreeBSD Project.
%}

clear

%% Bode plot (log-log plot)
% 2 figures for magnitude & phase
H = tf(13,[1 4 13]);
%H = tf([2 5 1],[1 2 3]);

bode(H)
grid on

%% Linear frequency response
% 2 figures for magnitude & phase
f = linspace(-3, 3, 101);
w = 2*pi*f;
[mag, phase, wout] = bode(H, w);
mag = mag(:);
phase = phase(:);
figure;
subplot(2,1,1); plot(f, mag, "LineWidth", 2);
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on
subplot(2,1,2); plot(f, phase,  "LineWidth", 2);
xlabel('Frequency (Hz)')
ylabel('Phase (deg)')
grid on

%% Frequency reponse in 3D
% magnitude & phase in one figure
real = mag.*cosd(phase);
img = mag.*sind(phase);

figure
title('Frequency Response in 3D');
hold on
plot3(f, real, img,  "LineWidth", 2);
xlabel('Frequency (Hz)')
ylabel('Real')
zlabel('Imaginary')
grid on
view(30,15)

% plotting lines
X = [f; f];
Y = [zeros(1, length(f)); real'];
Z = [zeros(1, length(f)); img'];
plot3(X,Y,Z)
plot3(X(2,:),Y(2,:),Z(2,:), '.')

% adding a few phasors
for i = 45:2:59
    txt = strcat(num2str(mag(i), '%.2f'), '\angle', num2str(phase(i), '%.2f'));
    text(f(i), real(i)*1.1, img(i)*1.1, txt);
end

%% Nyquist
figure
nyquist(H)

