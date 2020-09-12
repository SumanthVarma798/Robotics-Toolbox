function [symDH] = genDHTable(a, d, alpha, theta)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

%Assign the variables to symbolic parameters
symThetas = sym('Theta',[1, length(theta)]);
symThetas = transpose(symThetas);
symD = sym('D',[1,length(d)]);
symD = transpose(symD);
%Create a symbollic DH matrix
symA = sym('a',[1 length(a)]);
symA = transpose(symA);
symAlpha = sym('alpha', [1 length(alpha)]);
symAlpha = transpose(symAlpha);


symDH = [symA symD symAlpha symThetas];

for i = 1:length(a)
    symDH = subs(symDH,symDH(i,1),a(i));
    symDH = subs(symDH,symDH(i,2),d(i));
    symDH = subs(symDH,symDH(i,3),alpha(i));
    symDH = subs(symDH,symDH(i,4),theta(i));

end

