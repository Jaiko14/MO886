function [vecc] = minmaxn(vec)
m = size(vec,1); %Normaliza vetores para range 0-1

b = max(vec);
a = min(vec);
if(b-a)
vecc = (vec-a)/(b-a);
end
end