% 
% Modified by S. Baek on 2024-01-26
% United States Air Force Academy
% ECE333 Signal Processing and Linear Systems
%
% Last updated: 2024-02-15 by S. Baek
%
% A major part of this code was downloaded from
% http://www.mathworks.com/matlabcentral/fileexchange/20327-3d-transfer-function-plot-with-s-plane/content/s_plane.m
%
% this code written to simulate the value of the transfer function (TF)in
% s-plane as 3D-surface plot. where the value of TF is infinity at the 
% poles coordinates and zero at the zeros coordinates.
%
% Copyright (c) 2008, Ali Talib Oudah
% All rights reserved.
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are
% met:
%
% * Redistributions of source code must retain the above copyright
% notice, this list of conditions and the following disclaimer.
% * Redistributions in binary form must reproduce the above copyright
% notice, this list of conditions and the following disclaimer in
% the documentation and/or other materials provided with the distribution
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.



clear
clc
close all

syms s unreal                   % making (s) as a symbol
a=-5;                           % minimum axis limits (can be edited)
b=5;                            % maximum axis limits (can be edited)
x1=a:0.1:b;                     % real axis
y1=x1*1i;                       % imaginary axis
[sigma,omega]=meshgrid(x1,y1);  % generating mesh for x and y 

% Laplace
ss=sigma+omega;                 % generate complex plane (s-plane)
n=s+2;                          % numerator of tarnsfer function (can be edited)
d=s.^2+2*s+2;                   % denominator of tarnsfer function (can be edited)
nn=subs(n,ss);                  % substitute the numerator by ss
dd=subs(d,ss);                  % substitute the denominator by ss
f=abs(nn./dd);                  % treansfare function

sys = tf([1, 2], [1, 2, 2]);
pzplot(sys);
axis([-5, 5, -5, 5]);
figure;

% Fourier
ss=omega;                       % generate complex plane (s-plane)
n=s+2;                          % numerator of tarnsfer function (can be edited)
d=s.^2+2*s+2;                   % denominator of tarnsfer function (can be edited)
fourier = abs(subs(n,ss)./subs(d,ss));                  % treansfare function

h_laplace = mesh(sigma,omega*1i,f);% generate 3D transparent srface
xlabel('real')
ylabel('imaginary')
axis auto
hold on
xx=x1;
yy=xx*0;
h_fourier = plot3(0*sigma, omega*1i, fourier, 'r', 'LineWidth', 3);
plot(xx,yy,'k') %plot x-axis
plot(yy,xx,'k') %plot y-axis
%view(az, el);
%[az, el] = view;
%view(90, 0); % view frequency response 
view(0, 90); % top view

set(h_laplace, 'Visible', 'on');
set(h_fourier, 'Visible', 'on');

ns=eval(solve(n)); % compute the roots of the numerator as zeros

if ~any(imag(ns)) % if all zeros are real
    sy=zeros(size(ns)); %generate zero matrix with the same size of r
    plot(ns,sy,'sr','MarkerFaceColor','r')
else
    plot(ns,'sr','MarkerFaceColor','r') % plot imaginary part of roots with respect to real part
end

ds=eval(solve(d)); % compute the roots of the denominator as poles

if ~any(imag(ds)) % if all poles are real
    sy=zeros(size(ds)); %generate zero matrix with the same size of r
    plot(ds,sy,'sr','MarkerFaceColor','r')
else
    plot(ds,'sr','MarkerFaceColor','r') % plot imaginary part of roots with respect to real part
end

