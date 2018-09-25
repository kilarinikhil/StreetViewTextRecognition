% Load an image 
I = imread('modify.jpg');

% Perform OCR
results = ocr(I);
words = results.Words

    
    wordBBox = results.WordBoundingBoxes(:,:)
    
    
    Iname = insertObjectAnnotation(I, 'rectangle', wordBBox, words);
    imshow(Iname);
