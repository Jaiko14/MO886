% Q = Achlioptas(n1, dim) : Constrói Q conforme descrito no PDF. Veja o
% arquivo.

% Xachdim = X*Q : Projeta X conforme as colunas de Q



n1 = size(X,2);
disp('Projeção aleatória de Achlioptas, 350 pontos.')
tach3501 = cputime;
Q = Achlioptas(n1, 350);
Xach350 = X*Q;
Xach350 = minmaxmat(Xach350);
tach350_ = cputime;
[Modeloach350, preditoach350val, labelach350] = crossvali(Xach350, label);
tach3502 = cputime;
tempoach350 = tach3502-tach3501;

disp('Projeção aleatória de Achlioptas, 250 pontos.')
tach2501 = cputime;
Q = Achlioptas(n1, 250);
Xach250 = X*Q;
Xach250 = minmaxmat(Xach250);
tach250_ = cputime;
[Modeloach250, preditoach250val, labelach250] = crossvali(Xach250, label);
tach2502 = cputime;
tempoach250 = tach2502-tach2501;


disp('Projeção aleatória de Achlioptas, 150 pontos.')
tach1501 = cputime;
Q = Achlioptas(n1, 150);
Xach150 = X*Q;
Xach150 = minmaxmat(Xach150);
tach150_ = cputime;
[Modeloach150, preditoach150val, labelach150] = crossvali(Xach150, label);
tach1502 = cputime;
tempoach150 = tach1502-tach1501;



disp('Projeção aleatória de Achlioptas, 50 pontos.')
tach501 = cputime;
Q = Achlioptas(n1, 50);
Xach50 = X*Q;
Xach50 = minmaxmat(Xach50);
tach50_ = cputime;
[Modeloach50, preditoach50val, labelach50] = crossvali(Xach50, label);
tach502 = cputime;
tempoach50 = tach502-tach501;


disp('Projeção aleatória de Achlioptas, 10 pontos.')
tach101 = cputime;
Q = Achlioptas(n1, 10);
Xach10 = X*Q;
Xach10 = minmaxmat(Xach10);
tach10_ = cputime;
[Modeloach10, preditoach10val, labelach10] = crossvali(Xach10, label);
tach102 = cputime;
tempoach10 = tach102-tach101;