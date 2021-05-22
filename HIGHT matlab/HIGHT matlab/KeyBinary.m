function key = KeyBinary(key_hex) %transform hex to binary
%key_hex = {'00' '01' '02' '03' '04' '05' '06' '07' ...
 %          '08' '09' '0a' '0b' '0c' '0d' '0e' '0f'};
keyy=[];
key=zeros(8,16); %matrix formed for key binary, each colomn is a byte.
for i=1:16
    keyy = hexToBinaryVector(key_hex(i),8,'LSBFirst');
    key(:,i) = keyy;
end
end