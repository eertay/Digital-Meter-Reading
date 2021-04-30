for i = 1:150
    jpgFilename = strcat(int2str(i), '.jpg');
    predict(jpgFilename);
end


%T = table(File, Value

function predict(filename)

    file = fullfile('digital-out', filename);
    res = imread(file);
    
    ocrRes = ocr(res, 'CharacterSet', '0123456789', 'TextLayout', 'Line', 'Language', 'C:\Users\eylul\Documents\MATLAB\original\tessdata\original.traineddata');
    
    disp(filename);
    disp(ocrRes.Text);
    
    % Save to txt document
    f = fopen('C:\Users\eylul\Documents\MATLAB\enerjisa_results.txt', 'a+');
    
    for i= 1 :numel(ocrRes)
        fprintf(f,'%s,',filename);
        fprintf(f,'%s\r\n',ocrRes(i).Text);
    end
    % fclose('all');
    
    imshow(res);
end
