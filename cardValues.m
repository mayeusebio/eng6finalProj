imagefiles = dir('cardPhotos/*.png');      
nfiles = length(imagefiles); 
for ii=1:nfiles
   currentfilename = imagefiles(ii).name;
   imgFileNames{ii} = char(currentfilename);
end
       
cardId = [1:52];
v = [10 2 3 4 5 6 7 8 9 1 10 10 10];
cardValue = repelem(v,4);
cards = [cardId', cardValue', "cardPhotos/" + string(imgFileNames)'];



