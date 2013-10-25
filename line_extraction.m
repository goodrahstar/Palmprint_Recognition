function [Feature_Line] = line_extraction(Lines,CropImage)
Left=Lines>0.5;
CLines=bwmorph(Left,'thicken',2);

CL=bwmorph(CLines,'close',2);
CL=bwmorph(CL,'thicken',5);
CL=bwmorph(CL,'close',5);

% figure,imshow(CL);

CC = bwconncomp(CL);
L = labelmatrix(CC);
RGB = label2rgb(L);
% figure, imshow(RGB);
S=regionprops(CC);
% idx = find([S.Area] >1000);
numPixels = cellfun(@numel,CC.PixelIdxList);

[biggest,idx] = max(numPixels);
Feature_Line1 = ismember(labelmatrix(CC), idx);
numPixels(idx)=0;

[biggest,idx] = max(numPixels);
Feature_Line2 = ismember(labelmatrix(CC), idx);
numPixels(idx)=0;

[biggest,idx] = max(numPixels);
Feature_Line3 = ismember(labelmatrix(CC), idx);

[biggest,idx] = max(numPixels);
Feature_Line4 = ismember(labelmatrix(CC), idx);
numPixels(idx)=0;

[biggest,idx] = max(numPixels);
Feature_Line5 = ismember(labelmatrix(CC), idx);
numPixels(idx)=0;

[biggest,idx] = max(numPixels);
Feature_Line6 = ismember(labelmatrix(CC), idx);
numPixels(idx)=0;

Feature_Line=Feature_Line1+Feature_Line2+Feature_Line3+Feature_Line4+Feature_Line5+Feature_Line6;
% imshow(Feature_Line1);figure, imshow(Feature_Line2);
% Feature_Line(:,find(all(cellfun(@isempty,Feature_Line),1))) = [];
end