function Q = Achlioptas(dim1, dim2)
%%Faz a construção de Q conforme descrito no PDF, por Achlioptas.

vec = zeros(6,1);
vec(6) = -1;
vec(1) = 1;
vec = vec*sqrt(3);
Q = zeros(dim1,dim2);
parfor i=1:dim1
    for j=1:dim2
      Q(i,j) = vec(randi(6));  
    end
end
end