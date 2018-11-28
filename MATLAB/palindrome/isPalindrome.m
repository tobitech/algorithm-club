function [ res ] = isPalindrome( word )
%ISPALINDROME Summary of this function goes here
%   Detailed explanation goes here

res = strcmp(word,fliplr(word));
end

