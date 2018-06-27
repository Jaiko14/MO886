%Xsvd350 = SVD(X,numdim) : aplica o algoritmo SVD (Singular Value
%Decomposition) em X. Leia o arquivo SVD (não foi utilizado o svd() do Matlab explicitamente aqui).


X = X'; %Rearranja a matriz para o seu uso correto em SVD
disp('SVD, 350 pontos.')
tsvd3501 = cputime;
Xsvd350 = SVD(X,350);
Xsvd350 = minmaxmat(Xsvd350);
tsvd350_ = cputime;
[Modelosvd350, preditosvd350val, labelsvd350] = crossvali(Xsvd350, label);
tsvd3502 = cputime;
temposvd350 = tsvd3502-tsvd3501;

disp('SVD, 250 pontos.')
tsvd2501 = cputime;
Xsvd250 = SVD(X,250);
Xsvd250 = minmaxmat(Xsvd250);
tsvd250_ = cputime;
[Modelosvd250, preditosvd250val, labelsvd250] = crossvali(Xsvd250, label);
tsvd2502 = cputime;
temposvd250 = tsvd2502-tsvd2501;


disp('SVD, 150 pontos.')
tsvd1501 = cputime;
Xsvd150 = SVD(X,150);
Xsvd150 = minmaxmat(Xsvd150);
tsvd150_ = cputime;
[Modelosvd150, preditosvd150val, labelsvd150] = crossvali(Xsvd150, label);
tsvd1502 = cputime;
temposvd150 = tsvd1502-tsvd1501;



disp('SVD, 50 pontos.')
tsvd501 = cputime;
Xsvd50 = SVD(X,50);
Xsvd50 = minmaxmat(Xsvd50);
tsvd50_ = cputime;
[Modelosvd50, preditosvd50val, labelsvd50] = crossvali(Xsvd50, label);
tsvd502 = cputime;
temposvd50 = tsvd502-tsvd501;



disp('SVD, 10 pontos.')
tsvd101 = cputime;
Xsvd10 = SVD(X,10);
Xsvd10 = minmaxmat(Xsvd10);
tsvd10_ = cputime;
[Modelosvd10, preditosvd10val, labelsvd10] = crossvali(Xsvd10, label);
tsvd102 = cputime;
temposvd10 = tsvd102-tsvd101;

X = X'; %Rearranja a matriz para a notação usual (linhas : pontos; colunas : features)