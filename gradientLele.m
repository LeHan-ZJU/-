%function gradientLele
clear all
close all
data = load('ex2data1.txt');
x = data(:,1:2);
y = data(:, 3);
[m,n] = size(x);
alpha = 0.01;
X = [ones(m, 1),x];
Y = y;
theta = zeros((n+1), 1);
for i=1:9
T=X*theta;
    H=1./(1+exp(-T));
    E=H-Y;
    theta=theta-alpha*X'*E;

    figure;
    for k=1:1:100
        if H(k)>0
            plot(X(k,2),X(k,3),'o');
        else
            plot(X(k,2),X(k,3),'*');
        end
        hold on
    end