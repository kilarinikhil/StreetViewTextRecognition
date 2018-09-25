v = VideoReader('test1.3gp');
 n = v.NumberOfFrames;

for i = 1:1:n
  frames = read(v,i);
  
  
  results = ocr(frames);
    words = results.Words

    
    wordBBox = results.WordBoundingBoxes(:,:)
    
    
    Iname = insertObjectAnnotation(frames, 'rectangle', wordBBox, words);
    imshow(Iname);
end 

     
