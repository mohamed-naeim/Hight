function C = FinalTransformation(key_hex,plain_text,SK,WK,X)
%key_hex = {'00' '11' '22' '33' '44' '5' '66' '77' ...
%          '88' '99' 'aa' 'bb' 'cc' 'dd' 'ee' 'ff'};
%plain_text ={ '00' '00' '00' '00' '00' '00' '00' '00'};
%SK=subKey(key_hex);
MK = hex2dec(key_hex);
%WK = WK_gen (MK);
C=[];
%X = RoundF (key_hex,plain_text,SK);
C(:,1) = add_mod_2_8(X(:,2,33),WK(:,5));
C(:,2) = X(:,3,33);
C(:,3) = xor(X(:,4,33),WK(:,6));
C(:,4) = X(:,5,33);
C(:,5) = add_mod_2_8(X(:,6,33),WK(:,7));
C(:,6) = X(:,7,33);
C(:,7) = xor(X(:,8,33),WK(:,8));
C(:,8) = X(:,1,33);
end