function [Xsvd, mu] = SVD(X,r)
%Xsvd == Matriz de Dados com dimensão reduzida 
%mu == média dos dados


% Computa o SVD truncado
[U, LAMBDA, V] = svd(X,'econ');
U = U(:,1:r);
LAMBDA = LAMBDA(1:r,1:r);
V = V(:,1:r);

% Calcula as componentes principais
Xsvd = LAMBDA * V';

Xsvd = Xsvd';

