function [vecc] = minmaxmat(vec)
m = size(vec,1);
n = size(vec,2);

parfor i=1:n
b = max(vec(:,i));
a = min(vec(:,i));
if(b-a)
    vecc(:,i) = (vec(:,i)-a)/(b-a);
end
end
end