function key = KeyBinary(key_hex)
%key_hex = {'00' '01' '02' '03' '04' '05' '06' '07' ...
 %          '08' '09' '0a' '0b' '0c' '0d' '0e' '0f'};
key=[];
key=zeros(8,16);
for i=1:16
    key = hexToBinaryVector(key_hex(i),8,'LSBFirst');
    key(:,i) = key;
end
end