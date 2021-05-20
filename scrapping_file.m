
html = webread('http://your main target url')
pattern = '<a href="';
startindex=strfind(html, pattern);
endindex=strfind(html,'">');
str = string(html);
for i=1 :length(startindex)
    for j=1:length(endindex)    
        if endindex(j)>startindex(i)
            newStr = extractBetween(html,startindex(i)+8,endindex(j)) 
            if contains(newStr, ".pdf")==1
                s = replace(newStr,'"','');
                URL=append('http://please fill with your target url',s)
                outfilename = websave(string(s),string(URL));  
            end
             i=i+1;
        else
            j=j+1;
        end
    end 
end        




