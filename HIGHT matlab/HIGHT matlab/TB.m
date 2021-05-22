clear
clc
key_hex = {'00' '11' '22' '33' '44' '5' '66' '77' ...
          '88' '99' 'aa' 'bb' 'cc' 'dd' 'ee' 'ff'};
plain_text ={ '00' '00' '00' '00' '00' '00' '00' '00'};
[WK,SK] = KeySchedule(key_hex);
X = RoundF (key_hex,plain_text,SK);
C = FinalTransformation(key_hex,plain_text,SK,WK,X);
disp('     C1    C2    C3    C4    C5    C6    C7    C8')
disp(C)