figure
title('Model Precision');
xlabel('Dimensions');
ylabel('Precision');
hold on
x = [10, 50, 150, 250, 350];
aux = [precisionach10, precisionach50, precisionach150, precisionach250, precisionach350];
auxstr{1} = [Modeloach10.CodingName];
auxstr{2} = [Modeloach50.CodingName];
auxstr{3} = [Modeloach150.CodingName];
auxstr{4} = [Modeloach250.CodingName];
auxstr{5} = [Modeloach350.CodingName];
for i=1:5
    if(auxstr{i} == 'onevsall')
       auxach = plot(x(i), aux(i), 'g*', 'LineWidth', 2); 
    end
    
    if(auxstr{i} == 'onevsone')
        auxach = plot(x(i), aux(i), 'r*', 'LineWidth', 2); 
    end
end

aux = [precisiondct10, precisiondct50, precisiondct150, precisiondct250, precisiondct350];
auxstr{1} = [Modelodct10.CodingName];
auxstr{2} = [Modelodct50.CodingName];
auxstr{3} = [Modelodct150.CodingName];
auxstr{4} = [Modelodct250.CodingName];
auxstr{5} = [Modelodct350.CodingName];
for i=1:5
    if(auxstr{i} == 'onevsall')
       auxdct = plot(x(i), aux(i), 'go', 'LineWidth', 2); 
    end
    
    if(auxstr{i} == 'onevsone')
        auxdct = plot(x(i), aux(i), 'ro', 'LineWidth', 2); 
    end
end

aux = [precisiongauss10, precisiongauss50, precisiongauss150, precisiongauss250, precisiongauss350];
auxstr{1} = [Modelogauss10.CodingName];
auxstr{2} = [Modelogauss50.CodingName];
auxstr{3} = [Modelogauss150.CodingName];
auxstr{4} = [Modelogauss250.CodingName];
auxstr{5} = [Modelogauss350.CodingName];
for i=1:5
    if(auxstr{i} == 'onevsall')
       auxgauss = plot(x(i), aux(i), 'g+', 'LineWidth', 2); 
    end
    
    if(auxstr{i} == 'onevsone')
        auxgauss = plot(x(i), aux(i), 'r+', 'LineWidth', 2); 
    end
end

aux = [precisionhaar10, precisionhaar50, precisionhaar150, precisionhaar250, precisionhaar350];
auxstr{1} = [Modelohaar10.CodingName];
auxstr{2} = [Modelohaar50.CodingName];
auxstr{3} = [Modelohaar150.CodingName];
auxstr{4} = [Modelohaar250.CodingName];
auxstr{5} = [Modelohaar350.CodingName];
for i=1:5
    if(auxstr{i} == 'onevsall')
       auxhaar = plot(x(i), aux(i), 'gd', 'LineWidth', 2); 
    end
    
    if(auxstr{i} == 'onevsone')
        auxhaar = plot(x(i), aux(i), 'rd', 'LineWidth', 2); 
    end
end

aux = [precisionpca10, precisionpca50, precisionpca150, precisionpca250, precisionpca350];
auxstr{1} = [Modelopca10.CodingName];
auxstr{2} = [Modelopca50.CodingName];
auxstr{3} = [Modelopca150.CodingName];
auxstr{4} = [Modelopca250.CodingName];
auxstr{5} = [Modelopca350.CodingName];
for i=1:5
    if(auxstr{i} == 'onevsall')
       auxpca = plot(x(i), aux(i),'gpentagram', 'LineWidth', 2); 
    end
    
    if(auxstr{i} == 'onevsone')
        auxpca = plot(x(i), aux(i), 'rpentagram', 'LineWidth', 2); 
    end
end

aux = [precisionsvd10, precisionsvd50, precisionsvd150, precisionsvd250, precisionsvd350];
auxstr{1} = [Modelosvd10.CodingName];
auxstr{2} = [Modelosvd50.CodingName];
auxstr{3} = [Modelosvd150.CodingName];
auxstr{4} = [Modelosvd250.CodingName];
auxstr{5} = [Modelosvd350.CodingName];
for i=1:5
    if(auxstr{i} == 'onevsall')
       auxsvd = plot(x(i), aux(i), 'ghexagram', 'LineWidth', 2); 
    end
    
    if(auxstr{i} == 'onevsone')
        auxsvd = plot(x(i), aux(i), 'rhexagram', 'LineWidth', 2); 
    end
end

if(Modelobase.CodingName == 'onevsall')
   auxbase = plot(565, precisionbase, 'gx', 'LineWidth', 2); 
end

if(Modelobase.CodingName == 'onevsone')
   auxbase = plot(565, precisionbase, 'rx', 'LineWidth', 2); 
end

legend([auxach, auxdct, auxgauss, auxhaar, auxpca, auxsvd, auxbase], {'Achlioptas', 'DCT', 'Gauss', 'Haar', 'PCA', 'SVD', 'Base'}, 'FontSize', 16, 'Location', 'southeast');
