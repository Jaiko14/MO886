X = X';
disp('Gaussian Kernel PCA, 350 pontos.')
tkpca3501 = cputime;
Xkpca350 = kernelpca(X,350);
tkpca350_ = cputime;
[Modelokpca350, preditokpca350val, labelkpca350] = crossvali(Xkpca350, label);
tkpca3502 = cputime;
tempokpca350 = tkpca3502-tkpca3501;

disp('Gaussian Kernel PCA, 250 pontos.')
tkpca2501 = cputime;
Xkpca250 = kernelpca(X,250);
tkpca250_ = cputime;
[Modelokpca250, preditokpca250val, labelkpca250] = crossvali(Xkpca250, label);
tkpca2502 = cputime;
tempokpca250 = tkpca2502-tkpca2501;


disp('Gaussian Kernel PCA, 150 pontos.')
tkpca1501 = cputime;
Xkpca150 = kernelpca(X,150);
tkpca150_ = cputime;
[Modelokpca150, preditokpca150val, labelkpca150] = crossvali(Xkpca150, label);
tkpca1502 = cputime;
tempokpca150 = tkpca1502-tkpca1501;



disp('Gaussian Kernel PCA, 50 pontos.')
tkpca501 = cputime;
Xkpca50 = kernelpca(X,50);
tkpca50_ = cputime;
[Modelokpca50, preditokpca50val, labelkpca50] = crossvali(Xkpca50, label);
tkpca502 = cputime;
tempokpca50 = tkpca502-tkpca501;



disp('Gaussian Kernel PCA, 10 pontos.')
tkpca101 = cputime;
Xkpca10 = kernelpca(X,10);
tkpca10_ = cputime;
[Modelokpca10, preditokpca10val, labelkpca10] = crossvali(Xkpca10, label);
tkpca102 = cputime;
tempohkpca10 = tkpca102-tkpca101;

X = X';