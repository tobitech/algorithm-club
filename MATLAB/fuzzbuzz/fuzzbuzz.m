disp('A Fuzzbuzz Algorithm');

disp('Input A Number:');
num = input('');

if isnumeric(num)
    if mod(num,5) == 0 &&  mod(num,3) == 0
        disp('FUZZBUZZ')
    elseif mod(num,5) == 0
        disp('BUZZ');
    elseif mod(num,3) == 0
        disp('FUZZ');
    else
        disp('Not A Number Divisible By 3 and 5');
    end
else
    disp('Not A Number');
end