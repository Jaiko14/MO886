disp('ach');
c = confusionmat(labelach10, preditoach10val);
[~, ~, ~, fmeasach10, precisionach10, recallach10] = statisticalt(c);
c = confusionmat(labelach50, preditoach50val);
[~, ~, ~, fmeasach50, precisionach50, recallach50] = statisticalt(c);
c = confusionmat(labelach150, preditoach150val);
[~, ~, ~, fmeasach150, precisionach150, recallach150] = statisticalt(c);
c = confusionmat(labelach250, preditoach250val);
[~, ~, ~, fmeasach250, precisionach250, recallach250] = statisticalt(c);
c = confusionmat(labelach350, preditoach350val);
[~, ~, ~, fmeasach350, precisionach350, recallach350] = statisticalt(c);
disp('dct');
c = confusionmat(labeldct10, preditodct10val);
[~, ~, ~, fmeasdct10, precisiondct10, recalldct10] = statisticalt(c);
c = confusionmat(labeldct50, preditodct50val);
[~, ~, ~, fmeasdct50, precisiondct50, recalldct50] = statisticalt(c);
c = confusionmat(labeldct150, preditodct150val);
[~, ~, ~, fmeasdct150, precisiondct150, recalldct150] = statisticalt(c);
c = confusionmat(labeldct250, preditodct250val);
[~, ~, ~, fmeasdct250, precisiondct250, recalldct250] = statisticalt(c);
c = confusionmat(labeldct350, preditodct350val);
[~, ~, ~, fmeasdct350, precisiondct350, recalldct350] = statisticalt(c);
disp('gauss');
c = confusionmat(labelgauss10, preditogauss10val);
[~, ~, ~, fmeasgauss10, precisiongauss10, recallgauss10] = statisticalt(c);
c = confusionmat(labelgauss50, preditogauss50val);
[~, ~, ~, fmeasgauss50, precisiongauss50, recallgauss50] = statisticalt(c);
c = confusionmat(labelgauss150, preditogauss150val);
[~, ~, ~, fmeasgauss150, precisiongauss150, recallgauss150] = statisticalt(c);
c = confusionmat(labelgauss250, preditogauss250val);
[~, ~, ~, fmeasgauss250, precisiongauss250, recallgauss250] = statisticalt(c);
c = confusionmat(labelgauss350, preditogauss350val);
[~, ~, ~, fmeasgauss350, precisiongauss350, recallgauss350] = statisticalt(c);
disp('haar');
c = confusionmat(labelhaar10, preditohaar10val);
[~, ~, ~, fmeashaar10, precisionhaar10, recallhaar10] = statisticalt(c);
c = confusionmat(labelhaar50, preditohaar50val);
[~, ~, ~, fmeashaar50, precisionhaar50, recallhaar50] = statisticalt(c);
c = confusionmat(labelhaar150, preditohaar150val);
[~, ~, ~, fmeashaar150, precisionhaar150, recallhaar150] = statisticalt(c);
c = confusionmat(labelhaar250, preditohaar250val);
[~, ~, ~, fmeashaar250, precisionhaar250, recallhaar250] = statisticalt(c);
c = confusionmat(labelhaar350, preditohaar350val);
[~, ~, ~, fmeashaar350, precisionhaar350, recallhaar350] = statisticalt(c);
disp('pca')
c = confusionmat(labelpca10, preditopca10val);
[~, ~, ~, fmeaspca10, precisionpca10, recallpca10] = statisticalt(c);
c = confusionmat(labelpca50, preditopca50val);
[~, ~, ~, fmeaspca50, precisionpca50, recallpca50] = statisticalt(c);
c = confusionmat(labelpca150, preditopca150val);
[~, ~, ~, fmeaspca150, precisionpca150, recallpca150] = statisticalt(c);
c = confusionmat(labelpca250, preditopca250val);
[~, ~, ~, fmeaspca250, precisionpca250, recallpca250] = statisticalt(c);
c = confusionmat(labelpca350, preditopca350val);
[~, ~, ~, fmeaspca350, precisionpca350, recallpca350] = statisticalt(c);
disp('svd')
c = confusionmat(labelsvd10, preditosvd10val);
[~, ~, ~, fmeassvd10, precisionsvd10, recallsvd10] = statisticalt(c);
c = confusionmat(labelsvd50, preditosvd50val);
[~, ~, ~, fmeassvd50, precisionsvd50, recallsvd50] = statisticalt(c);
c = confusionmat(labelsvd150, preditosvd150val);
[~, ~, ~, fmeassvd150, precisionsvd150, recallsvd150] = statisticalt(c);
c = confusionmat(labelsvd250, preditosvd250val);
[~, ~, ~, fmeassvd250, precisionsvd250, recallsvd250] = statisticalt(c);
c = confusionmat(labelsvd350, preditosvd350val);
[~, ~, ~, fmeassvd350, precisionsvd350, recallsvd350] = statisticalt(c);
disp('base')
c = confusionmat(labelval, preditobaseval);
[~, ~, ~, fmeasbase, precisionbase, recallbase] = statisticalt(c);