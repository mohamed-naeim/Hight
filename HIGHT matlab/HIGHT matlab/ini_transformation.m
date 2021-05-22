function X = ini_transformation (key_hex,plain_text)
%key_hex = {'00' '01' '02' '03' '04' '05' '06' '07' ...
%         '08' '09' '0a' '0b' '0c' '0d' '0e' '0f'} ;
%plain_text ={ '00' '00' '00' '00' '00' '00' '00' '00'};
text = TextBinary(plain_text); %text in binary;
key = KeyBinary(key_hex);
MK = hex2dec(key_hex); % master key in dec.
X = zeros (8,8); % X0,1:8
WK = WK_gen (MK); 
X(:,1) = add_mod_2_8 (text(:,1) , WK(:,1));
X(:,2) = text(:,2);
X(:,3) = xor (text(:,3),WK(:,2));
X(:,4) = text(:,4); 
X(:,5) = add_mod_2_8 (text(:,5) , WK(:,3));
X(:,6) = text(:,6);
X(:,7) = xor (text(:,7),WK(:,4));
X(:,8) = text(:,8);
end