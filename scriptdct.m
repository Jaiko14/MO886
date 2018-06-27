%Xdct350 = dctfilt(X,numdim) : Aplica a redução de dimensionalidade através
%na matriz X através da Transformada Cossenoidal Discreta (DCT)



disp('DCT, 350 pontos.')
tdct3501 = cputime;
Xdct350 = dctfilt(X,350);
Xdct350 = minmaxmat(Xdct350);
tdct350_ = cputime;
[Modelodct350, preditodct350val, labeldct350] = crossvali(Xdct350, label);
tdct3502 = cputime;
tempodct350 = tdct3502-tdct3501;

disp('DCT, 250 pontos.')
tdct2501 = cputime;
Xdct250 = dctfilt(X,250);
Xdct250 = minmaxmat(Xdct250);
tdct250_ = cputime;
[Modelodct250, preditodct250val, labeldct250] = crossvali(Xdct250, label);
tdct2502 = cputime;
tempodct250 = tdct2502-tdct2501;


disp('DCT, 150 pontos.')
tdct1501 = cputime;
Xdct150 = dctfilt(X,150);
Xdct150 = minmaxmat(Xdct150);
tdct150_ = cputime;
[Modelodct150, preditodct150val, labeldct150] = crossvali(Xdct150, label);
tdct1502 = cputime;
tempodct150 = tdct1502-tdct1501;



disp('DCT, 50 pontos.')
tdct501 = cputime;
Xdct50 = dctfilt(X,50);
Xdct50 = minmaxmat(Xdct50);
tdct50_ = cputime;
[Modelodct50, preditodct50val, labeldct50] = crossvali(Xdct50, label);
tdct502 = cputime;
tempodct50 = tdct502-tdct501;



disp('DCT, 10 pontos.')
tdct101 = cputime;
Xdct10 = dctfilt(X,10);
Xdct10 = minmaxmat(Xdct10);
tdct10_ = cputime;
[Modelodct10, preditodct10val, labeldct10] = crossvali(Xdct10, label);
tdct102 = cputime;
tempodct10 = tdct102-tdct101;