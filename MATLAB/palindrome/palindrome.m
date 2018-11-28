 %Palindrome Algorithm.
 %This Algorithm is to check and return the number of palindromes in a sentence.
 %What is Palidrome? - https://en.wikipedia.org/wiki/Palindrome
 

%Task
%Implement a function that will tell me for each palidrome, how many times it occurs. For example
%["Civi": 1, "madam": 1, "kayak": 1, "anna": 2, "racecar": 1]
clear;
clc;
sentence = 'madam anna kayak notapalindrome anna Civic racecar Civic';


words = strsplit(sentence);
count = [];


% for i=1:length(words)
map = [];
for i=1:length(words)
    if(isPalindrome(words(i)))
        if isempty(map)
            map = containers.Map(words{i},1);
        else
            if isKey(map,words{i})
                map(words{i}) = map(words{i}) + 1;
            else
                map(words{i}) = 1;
            end
        end  
    end  
end

mapKeys = map.keys;

for i=1:length(mapKeys)
    fprintf('%s, %i\n',mapKeys{i}, map(mapKeys{i}));
end
