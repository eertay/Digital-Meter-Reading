for i = 1:24
    pngFilename = strcat(int2str(i), '.png');
    predict(pngFilename);
end

function predict(filename)

    file = fullfile('output', filename);
    res = imread(file);
    
    ocrRes = ocr(res,'CharacterSet', '0123456789', 'TextLayout', 'Line', 'Language', 'C:\Program Files\Tesseract-OCR\tessdata\original.traineddata');
    
    disp(filename);
    disp(ocrRes.Text);
    
    % Save to txt document
    f = fopen('C:\Users\Analythinx\Documents\MATLAB\results.txt', 'a+');
    
    for i= 1 :numel(ocrRes)
        fprintf(f,'%s,',filename);
        fprintf(f,'%s\r\n',ocrRes(i).Text);
    end
    %fclose("all");
end
