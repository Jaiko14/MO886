
% [Q,R] = qr(A) : Fatoração QR de A

% Q = Q*diag(sign(diag(R))) : Processo que uniformiza Q dentro de O(n); sem
% isso, fora do Matlab R2010a/R2010b, Q NÃO É HAAR-DISTRIBUIDA. (Ver
% Referências PDF)

% Q = Q(:, 1:numdim) : Pega as 'numdim' primeiras colunas de Q
%Xhaardim = X*Q : Projeta X conforme as colunas de Q


disp('Projeção aleatória, 350 pontos.')
thaar3501 = cputime;
A = randn(565);
[Q,R] = qr(A); %Fatoração QR de A
Q = Q*diag(sign(diag(R))); 
Q = Q(:, 1:350);
Xhaar350 = X*Q;
Xhaar350 = minmaxmat(Xhaar350);
thaar350_ = cputime;
[Modelohaar350, preditohaar350val, labelhaar350] = crossvali(Xhaar350, label);
thaar3502 = cputime;
tempohaar350 = thaar3502-thaar3501;

disp('Projeção aleatória, 250 pontos.')
thaar2501 = cputime;
A = randn(565);
[Q,R] = qr(A);
Q = Q*diag(sign(diag(R)));
Q = Q(:, 1:250);
Xhaar250 = X*Q;
Xhaar250 = minmaxmat(Xhaar250);
thaar250_ = cputime;
[Modelohaar250, preditohaar250val, labelhaar250] = crossvali(Xhaar250, label);
thaar2502 = cputime;
tempohaar250 = thaar2502-thaar2501;


disp('Projeção aleatória, 150 pontos.')
thaar1501 = cputime;
A = randn(565);
[Q,R] = qr(A);
Q = Q*diag(sign(diag(R)));
Q = Q(:, 1:150);
Xhaar150 = X*Q;
Xhaar150 = minmaxmat(Xhaar150);
thaar150_ = cputime;
[Modelohaar150, preditohaar150val, labelhaar150] = crossvali(Xhaar150, label);
thaar1502 = cputime;
tempohaar150 = thaar1502-thaar1501;



disp('Projeção aleatória, 50 pontos.')
thaar501 = cputime;
A = randn(565);
[Q,R] = qr(A);
Q = Q*diag(sign(diag(R)));
Q = Q(:, 1:50);
Xhaar50 = X*Q;
Xhaar50 = minmaxmat(Xhaar50);
thaar50_ = cputime;
[Modelohaar50, preditohaar50val, labelhaar50] = crossvali(Xhaar50, label);
thaar502 = cputime;
tempohaar50 = thaar502-thaar501;


disp('Projeção aleatória, 10 pontos.')
thaar101 = cputime;
A = randn(565);
[Q,R] = qr(A);
Q = Q*diag(sign(diag(R)));
Q = Q(:, 1:10);
Xhaar10 = X*Q;
Xhaar10 = minmaxmat(Xhaar10);
thaar10_ = cputime;
[Modelohaar10, preditohaar10val, labelhaar10] = crossvali(Xhaar10, label);
thaar102 = cputime;
tempohaar10 = thaar102-thaar101;