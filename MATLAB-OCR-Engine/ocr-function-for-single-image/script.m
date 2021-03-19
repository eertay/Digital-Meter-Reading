img = imread("output/23.png");
res = ocr(img, 'CharacterSet', '0123456789', 'TextLayout', 'Line', 'Language', 'C:\Program Files\Tesseract-OCR\tessdata\original.traineddata');
disp(res);