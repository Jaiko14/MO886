function Y = dctfilt(X,dim)


d = dct2(X); %Transforma X para o campo DCT


o = size(X,1); %o = n�mero de pontos na database


Y = idct2(d, [o, dim]); %Pega apenas as primeiros "dim" colunas de X em DCT.
%Isso � essencialmente o que est� descrito no PDF, pois o dct2 do Matlab
%acumula, para qualquer imagem, as frequ�ncias mais baixas no canto
%superior esquerdo -- ou seja, as frequ�ncias (altas) que queremos
%descartar n�o estar�o em Y ap�s a transformada inversa.
end