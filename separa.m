function [Xtrain, Xval, labeltrain, labelval] = separa(X, label)
%%Faz a separa��o aleat�ria entre dados de treino e valida��o

n = size(X,1);
m = 0.8*n; % 80 porcento para treino
oit = randperm(n);
Xtrain = X(oit(1:m),:);
Xval = X(oit(m+1:n),:);
labeltrain = label(oit(1:m));
labelval = label(oit(m+1:n));

end