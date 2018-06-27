function [fmeasure, precision, recall, ftot, ptot, rtot] = statisticalt(c)
%%Calcula m�tricas estat�sticas atrav�s da matriz de confus�o c
%f-measure : Vetor de F-measures para cada uma das classes
%precision : Vetor de precis�es para cada uma das classes
%recall : Vetor de revoca��es para cada uma das classes
%ftot : F-measure total do problema multiclasse (m�dia de f-measure)
%ptot : Precis�o total do problema multiclasse (m�dia de precision)
%rtot : Revoca��o total do problema multiclasse (m�dia de recall)



%Nota : F-measure, aqui, se refere � F1-Score
n = size(c,1);
fmeasure = zeros(n,1);
precision = zeros(n,1);
recall = zeros(n,1);
for i=1:n
    dg = c(i,i);
    auxfp = sum(c(:,i)) - dg;
    precision(i) = dg/(auxfp + dg);
    if (isnan(precision(i)))
       precision(i) = 0; 
    end
    auxfn = sum(c(i,:)) - c(i,i);
    recall(i) = dg/(dg + auxfn);
    if (isnan(recall(i)))
        recall(i) = 0;
    end
    fmeasure(i) = 2*precision(i)*recall(i)/(precision(i) + recall(i));
    if (isnan(fmeasure(i)))
       fmeasure(i) = 0; 
    end
end
    ptot = sum(precision)/n;
    rtot = sum(recall)/n;
    ftot = 2*ptot*rtot/(ptot + rtot);
end