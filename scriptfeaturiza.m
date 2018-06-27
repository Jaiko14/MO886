X = zeros(1360,565);


for i=1:1360
    disp(i);
    aux = imds.Files(i);
    aux = aux{1};
    z = imread(aux); %Carrega a imagem desta iteração
    %Separação das cores da imagem carregada
    z1 = z(:,:,1);
    z2 = z(:,:,2);
    z3 = z(:,:,3);
    %Extrai features de Local Binary Patterns de cada uma das camadas de
    %cores
    X1 = extractLBPFeatures(z1);
    X2 = extractLBPFeatures(z2);
    X3 = extractLBPFeatures(z3);
    X(i, 1:59) = X1;
    X(i, 60:118) = X2;
    X(i, 119:177) = X3;


    %Extrai features HOG da imagem carregada
    X(i, 178:501) = extractHOGFeatures(z, 'CellSize',[32 32]);

    %Extrai features advindas do histograma -- com 64 bins -- da imagem
    %carregada
    [vec, ~] = imhist(z, 64);
    vec = minmaxn(vec); %Normaliza as features advindas deste histograma na range 0-1
    X(i, 502:565) = vec';
    
    
end