
%%Cria o vetor de classes

k = 0;
label = zeros(1360,1);
for i=1:68
    k = k +1;
    for j=1:20
        label((i-1)*20 + j) = k;
    end
end

%%Carrega a database de imagens presentes na mesma pasta que mainscript
imds = imageDatastore(fullfile(pwd), 'Labels', label);
%aplica o processo de featurização em cada uma das imagens. 565 Features
scriptfeaturiza;

% Nota : Todos os modelos calculados a seguir utilizaram Cross-Validation 10-fold

%%Calcula o modelo SVM com Kernel Polinomial para a database pura featurizada, com

disp('Modelo Base.');
%Para calcular o tempo gasto pelo processo completo de treinamento nesta
%database 
tbase1 = cputime;
Xnorm = minmaxmat(X); %Normaliza os dados para a range 0-1
tbase_ = cputime;%Para calcular o tempo gasto APENAS pelo processo de treinamento SVM em si (tbase2-tbase_)
%Ou para o calculo do pré-processamento APENAS (tbase_ - tbase1)
[Modelobase, preditobaseval, labelval] = crossvali(Xnorm,label);
tbase2 = cputime;
tempobase = tbase2-tbase1; %Calcula o tempo gasto pelo processo completo 

%%Cada um dos scripts a seguir calcula modelos SVM para dimensões reduzidas
%%(350, 250, 150, 50 e 10) utilizando diferentes métodos de redução de
%%dimensionalidade.

%%Além disso, cada um dos scripts a seguir segue, para cada uma das
%%diferentes dimensões reduzidas, uma estrutura similar à acima.
%Diferenças entre cada um estão comentadas em seus respectivos arquivos

%Método DCT
scriptdct;

%Método PCA com Kernel Simples
scriptpca;


%Método SVD (PCA sem Centralização)
scriptsvd;


%Método de Projeções Aleatórias usando matrizes Haar-distribuidas em O(n)
scriptprojaleat;


%Método de Projeções Aleatórias usando matrizes de Achlioptas
scriptprojaleat2;

%Método de Projeções Aleatórias usando matrizes do conjunto gaussiano
scriptprojaleat3;

%Calcula as acuracias de todos os modelos
scriptmetricasacc

%Calcula as f1-measures, recalls e precisão de todos os modelos
scriptmetricasconf


%Faz o plot das métricas
scriptplottime
saveas(gcf, 'tempo.png')
scriptplotacc
saveas(gcf, 'acc.png')
scriptplotrecall
saveas(gcf, 'recall.png')
scriptplotprecision
saveas(gcf, 'prec.png')
scriptplotfmeas
saveas(gcf, 'fmeas.png')




