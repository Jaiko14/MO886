%Xpca350 = PCA(X,numdim) : aplica o algoritmo PCA (Principal Component
%Analysis) em X. Leia o arquivo PCA (não foi utilizado o pca() do Matlab).



X = X';
disp('PCA, 350 pontos.')
tpca3501 = cputime;
Xpca350 = PCA(X,350);
Xpca350 = minmaxmat(Xpca350);
tpca350_ = cputime;
[Modelopca350, preditopca350val, labelpca350] = crossvali(Xpca350, label);
tpca3502 = cputime;
tempopca350 = tpca3502-tpca3501;

disp('PCA, 250 pontos.')
tpca2501 = cputime;
Xpca250 = PCA(X,250);
Xpca250 = minmaxmat(Xpca250);
tpca250_ = cputime;
[Modelopca250, preditopca250val, labelpca250] = crossvali(Xpca250, label);
tpca2502 = cputime;
tempopca250 = tpca2502-tpca2501;


disp('PCA, 150 pontos.')
tpca1501 = cputime;
Xpca150 = PCA(X,150);
Xpca150 = minmaxmat(Xpca150);
tpca150_ = cputime;
[Modelopca150, preditopca150val, labelpca150] = crossvali(Xpca150, label);
tpca1502 = cputime;
tempopca150 = tpca1502-tpca1501;



disp('PCA, 50 pontos.')
tpca501 = cputime;
Xpca50 = PCA(X,50);
Xpca50 = minmaxmat(Xpca50);
tpca50_ = cputime;
[Modelopca50, preditopca50val, labelpca50] = crossvali(Xpca50, label);
tpca502 = cputime;
tempopca50 = tpca502-tpca501;



disp('PCA, 10 pontos.')
tpca101 = cputime;
Xpca10 = PCA(X,10);
Xpca10 = minmaxmat(Xpca10);
tpca10_ = cputime;
[Modelopca10, preditopca10val, labelpca10] = crossvali(Xpca10, label);
tpca102 = cputime;
tempopca10 = tpca102-tpca101;

X = X';