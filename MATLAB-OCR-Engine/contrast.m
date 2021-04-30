
for i = 1:450
  jpgFilename = strcat(int2str(i), '.JPG');
  contr(jpgFilename);
end

function contr(filename)


    file = fullfile('digital_demo', filename);
    img = imread(file);
    
    
    % Converting to grayscale
    I = rgb2gray(img);
    
    %  ----------------------------------
    J = adapthisteq(I);
    
    % -----------------------------------
    
     % Adaptive threshold
    T = adaptthresh(J,0.4,'ForegroundPolarity','dark', 'Statistic', 'gaussian');
    BW = imbinarize(J,T);
    
    
    % Complement first
    Icomplement = imcomplement(BW);

    % Fill Holes
    %Holes = imfill(Icomplement, 'holes');
    
    
    % Remove salt and pepper noise
    K = medfilt2(Icomplement, [4,4]);

    % Revert again to black on white background
    FinalComplement = imcomplement(K);
 
    imshow(FinalComplement);
    
      
    % Saving the new image in a new folder
    newname = fullfile('digital-out', filename);
    imwrite(FinalComplement, newname)
        
    

end