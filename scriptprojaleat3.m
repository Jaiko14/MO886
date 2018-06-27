% Q = randn(n1,n1) : Constrói Q com elementos i.i.d. normais padrão. 

% Xgaussdim = X*Q : Projeta X conforme as colunas de Q



n1 = size(X,2);
disp('Projeção aleatória Gaussiana, 350 pontos.')
tgauss3501 = cputime;
Q = randn(n1,n1);
Q = Q(:, 1:350);
Xgauss350 = X*Q;
Xgauss350 = minmaxmat(Xgauss350);
tgauss350_ = cputime;
[Modelogauss350, preditogauss350val, labelgauss350] = crossvali(Xgauss350, label);
tgauss3502 = cputime;
tempogauss350 = tgauss3502-tgauss3501;

disp('Projeção aleatória Gaussiana, 250 pontos.')
tgauss2501 = cputime;
Q = randn(n1,n1);
Q = Q(:, 1:250);
Xgauss250 = X*Q;
Xgauss250 = minmaxmat(Xgauss250);
tgauss250_ = cputime;
[Modelogauss250, preditogauss250val, labelgauss250] = crossvali(Xgauss250, label);
tgauss2502 = cputime;
tempogauss250 = tgauss2502-tgauss2501;


disp('Projeção aleatória Gaussiana, 150 pontos.')
tgauss1501 = cputime;
Q = randn(n1,n1);
Q = Q(:, 1:150);
Xgauss150 = X*Q;
Xgauss150 = minmaxmat(Xgauss150);
tgauss150_ = cputime;
[Modelogauss150, preditogauss150val, labelgauss150] = crossvali(Xgauss150, label);
tgauss1502 = cputime;
tempogauss150 = tgauss1502-tgauss1501;



disp('Projeção aleatória Gaussiana, 50 pontos.')
tgauss501 = cputime;
Q = randn(n1,n1);
Q = Q(:, 1:50);
Xgauss50 = X*Q;
Xgauss50 = minmaxmat(Xgauss50);
tgauss50_ = cputime;
[Modelogauss50, preditogauss50val, labelgauss50] = crossvali(Xgauss50, label);
tgauss502 = cputime;
tempogauss50 = tgauss502-tgauss501;


disp('Projeção aleatória Gaussiana, 10 pontos.')
tgauss101 = cputime;
Q = randn(n1,n1);
Q = Q(:, 1:10);
Xgauss10 = X*Q;
Xgauss10 = minmaxmat(Xgauss10);
tgauss10_ = cputime;
[Modelogauss10, preditogauss10val, labelgauss10] = crossvali(Xgauss10, label);
tgauss102 = cputime;
tempogauss10 = tgauss102-tgauss101;