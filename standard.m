function [Xc, mu] = standard(X)
%Centraliza os dados de X

% Calcula a média da amostra matricial
mu = mean(X,2);

% Retira a média de cada um dos valores da matriz Z
Xc = bsxfun(@minus,X,mu);
