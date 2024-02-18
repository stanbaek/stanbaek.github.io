%{
MATLAB Script/Funtion
File: complex_plots.m
Author: Stanley Baek
Affiliation: United States Air Force Academy
Date: February 18, 2024
 
Description:
This script/function plots complex function in the 3-dimesional space.

Simplified BSD License (FreeBSD License)
Copyright (c) 2024 Stanley S. Baek, All rights reserved.

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


% plot sqrt(x) where x is positive real, x in [0, 5]
clear
x = 0:0.01:5;
y = sqrt(x);
figure;
plot(x,y,'b', 'LineWidth', 2);
grid on
xlabel('$x$', 'Interpreter', 'latex');
ylabel('$\sqrt{x}$', 'Interpreter', 'latex');
title('$f(x)=\sqrt{x}, x\in(0,\infty)$', 'Interpreter', 'latex');
set(gcf, 'Position', [200   400   460   180])


% plot sqrt(x) where x is real, x in [-5, 5]
x = -5:0.01:5;
y = sqrt(x);
re = real(y);    % real part
im = imag(y);   % imaginary part
figure;
plot3(x, re, im, 'LineWidth', 2); % 3d plot
grid on
title('$f(x)=\sqrt{x}, x\in(-\infty,\infty)$', 'Interpreter', 'latex');
xlabel('$x$', 'Interpreter', 'latex');
ylabel('Real');
zlabel('Imaginary');
set(gcf, 'Position', [200   400   520   240])
view(0,90)


% plot complex exponential, exp(j*2*pi*t) 
clear
t = 0:0.01:2;
x = exp(1i*2*pi*t);
re = real(x);
im = imag(x);

figure;
plot3(t, re, im, 'LineWidth', 2);
grid on
axis equal
title('$f(\theta)=\exp(j\theta)$', 'Interpreter', 'latex');
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('Real');
zlabel('Imaginary');
set(gcf, 'Position', [200   400   500   400])
view(90,0)


% plot complex exponentials, exp(j*2*pi*t) &  exp(j*3*pi*t) 
clear
t = 0:0.01:2;
x = exp(1i*2*pi*t);
re = real(x);
im = imag(x);

figure;
plot3(t, re, im, 'LineWidth', 2, 'DisplayName', '$\exp(j2\pi t)$');
hold on
grid on
xlabel('$t$', 'Interpreter', 'latex');
ylabel('Real');
zlabel('Imaginary');
set(gcf, 'Position', [200   400   600   400])
y = exp(1i*3*pi*t);
re = real(y);
im = imag(y);
plot3(t, re, im, 'LineWidth', 2, 'DisplayName', '$\exp(j3\pi t)$');
axis equal
legend('Interpreter', 'latex');
view(90,0)


