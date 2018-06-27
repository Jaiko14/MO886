function [Xpca, mu] = PCA(X,r)
%Xpca == Matriz de Dados com dimensão reduzida 
%mu == média dos dados

% Centraliza os dados
[Xc, mu] = standard(X);

% Calcula SVD : 
%[U, S, V] = svds(Zc,r); % Funcionaria, mas é um pouco mais lento
[U, LAMBDA, V] = svd(Xc,'econ'); %'econ' é para calcular o SVM truncado nos valores singulares diferentes de zero.
U = U(:,1:r);
LAMBDA = LAMBDA(1:r,1:r);
V = V(:,1:r);

% Calcula componentes principais
Xpca = LAMBDA * V';

Xpca = Xpca'; %Rearranja a matriz para o uso correto no fitcecoc
