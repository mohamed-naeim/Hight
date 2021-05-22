function sub_key = subKey(key_hex)
%key_hex = {'00' '01' '02' '03' '04' '05' '06' '07' ...
%           '08' '09' '0a' '0b' '0c' '0d' '0e' '0f'};
key=KeyBinary(key_hex);
mat = const_gen();
sub_key = zeros(8,128);
for i=0:7
    for j=0:7
        m= mod(j-i,8); %add one because matlab doesn't deal with index 0;
        h=16*i+j;
        x=key(:,m+1); %m+1 to avoid conflict of index0;
        keym = binaryVectorToDecimal(x','LSBFirst');
        z=mat(:,h+1);
        matt=binaryVectorToDecimal(z','LSBFirst');
        y = decimalToBinaryVector(mod(keym+matt,255),8,'LSBFirst');
        sub_key(:,h+1) = y' ;
    end
    for j=0:7
        m= mod(j-i,8)+8; %add one because matlab doesn't deal with index 0;
        h=16*i+j+8;
        x=key(:,m+1); %m+1 to avoid conflict of index0;
        keym = binaryVectorToDecimal(x','LSBFirst');
        z=mat(:,h+1);
        matt=binaryVectorToDecimal(z','LSBFirst');
        y = decimalToBinaryVector(mod(keym+matt,255),8,'LSBFirst');
        sub_key(:,h+1) = y' ;
    end
end
end