function getCards(app)
    imagefiles = dir('*.png');      
    nfiles = length(imagefiles); 
    for ii=1:nfiles
       currentfilename = imagefiles(ii).name;
       app.imgFileNames{ii} = char(currentfilename);
    end
    
    % app.Image.ImageSource = app.imgFileNames{1};
end