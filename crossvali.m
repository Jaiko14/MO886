function [Modelo, precsaida, labelvalsaida] = crossvali(X, label)
%%Modelo == Melhor modelo calculado no processo Cross-Validado
%%Precsaida == Valores preditos pelo melhor modelo, naquela separa��o
%%treino/valida��o especificada
%%labelvalsaida == Classes da valida��o na separa��o referente ao melhor
%%modelo construido pelo procesos de Cross-Valida��o.

%%Nosso processo de Cross-Validation faz 20 treinamentos de SVM, visto a
%%compara��o -- sob a mesma separa��o treino/valida��o -- entre a qualidade
%%(atrav�s da m�trica Acur�cia) dos modelos treinados com estrutura
%%onevsall e onevsone.

C = 3; %Par�metro C do SVM
t = templateSVM('KernelFunction', 'gaussian', 'KernelScale', 'auto', 'BoxConstraint', C);
%KernelScale � referente ao par�metro "Gamma" do SVM. Aqui o fitcecoc
%escolhe automaticamente o melhor Gamma, a cada treinamento.
%Note que o 'KernelFunction == Gaussian'

options = statset('UseParallel', true); %Especifica para o treinamento aproveitar as capacidades de paralelismo
%da CPU

disp(1); %Primeiro treinamento da Cross-Validation 10-fold. As seguintes seguir�o o mesmo padr�o.
[Xtrain, Xval, labeltrain, labelval] = separa(X,label); %Faz a separa��o aleat�ria entre o Treino e a Valida��o
labelvalsaida = labelval; 
%Treina o SVM utilizando os par�metros pr�-determinados, e utilizando a
%estrutura multiclasse 'onevsall'
Modeloaux = fitcecoc(Xtrain, labeltrain, 'Coding', 'onevsall', 'Options', options, 'Learner', t);
%Treina o SVM utilizando os par�metros pr�-determinados, e utilizando a
%estrutura multiclasse 'onevsone'
Modeloaux2 = fitcecoc(Xtrain, labeltrain, 'Coding', 'onevsone', 'Options', options, 'Learner', t);

pred1 = predict(Modeloaux, Xval);
pred2 = predict(Modeloaux2, Xval);
vec1 = (pred1 == labelval);
vec2 = (pred2 == labelval);
%Faz a compara��o entre os modelos onevsall e onevsone
if (sum(vec1) > sum(vec2))
   Modelo = Modeloaux; 
   vec = vec1;
   precsaida = pred1;
else
   Modelo = Modeloaux2;
   vec = vec2;
   precsaida = pred2;
end

%Processo restante de Cross-Validation automatizado
for i=2:10
disp(i);
[Xtrain, Xval, labeltrain, labelval] = separa(X,label);
Modeloaux = fitcecoc(Xtrain, labeltrain, 'Coding', 'onevsall', 'Options', options, 'Learner', t);
Modeloaux2 = fitcecoc(Xtrain, labeltrain, 'Coding', 'onevsone', 'Options', options, 'Learner', t);
pred1 = predict(Modeloaux, Xval);
pred2 = predict(Modeloaux2, Xval);
vec1 = (pred1 == labelval);
vec2 = (pred2 == labelval);
if(sum(vec1) > sum(vec2))
    if(sum(vec1) > sum(vec))
        Modelo = Modeloaux; 
        vec = vec1;
        precsaida = pred1;
        labelvalsaida = labelval;
    end
else
   if(sum(vec2) > sum(vec))
    Modelo = Modeloaux2;
    vec = vec2;
    precsaida = pred2;
    labelvalsaida = labelval;
   end
end
    
    
end