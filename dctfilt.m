function Y = dctfilt(X,dim)


d = dct2(X); %Transforma X para o campo DCT


o = size(X,1); %o = número de pontos na database


Y = idct2(d, [o, dim]); %Pega apenas as primeiros "dim" colunas de X em DCT.
%Isso é essencialmente o que está descrito no PDF, pois o dct2 do Matlab
%acumula, para qualquer imagem, as frequências mais baixas no canto
%superior esquerdo -- ou seja, as frequências (altas) que queremos
%descartar não estarão em Y após a transformada inversa.
end