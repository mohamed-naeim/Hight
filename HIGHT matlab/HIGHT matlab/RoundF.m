function X = RoundF (key_hex,plain_text,SK)
%key_hex = {'00' '11' '22' '33' '44' '5' '66' '77' ...
%          '88' '99' 'aa' 'bb' 'cc' 'dd' 'ee' 'ff'};
%plain_text ={ '00' '00' '00' '00' '00' '00' '00' '00'};
%SK=subKey(key_hex);
X = ini_transformation(key_hex,plain_text);
for i=1:31
    X(:,1,i+1) = xor(X(:,8,i),add_mod_2_8(AuxF0(X(:,7,i)),SK(:,4*i+3+1))); 
    X(:,2,i+1) = X(:,1,i);
    X(:,3,i+1) = add_mod_2_8(X(:,2,i),xor(AuxF1(X(:,1,i)),SK(:,4*i+2+1)));
    X(:,4,i+1) = X(:,3,i);
    X(:,5,i+1) = xor(X(:,4,i),add_mod_2_8(AuxF0(X(:,3,i)),SK(:,4*i+1+1)));
    X(:,6,i+1) = X(:,5,i);
    X(:,7,i+1) = add_mod_2_8(X(:,6,i),xor(AuxF1(X(:,5,i)),SK(:,4*i+0+1)));
    X(:,8,i+1) = X(:,7,i);
end
X(:,1,33)= X(:,1,32);
X(:,2,33)= add_mod_2_8(X(:,2,32),xor(AuxF1(X(:,1,32)),SK(:,125)));       
X(:,3,33)= X(:,3,32);
X(:,4,33)= xor(X(:,4,32),add_mod_2_8(AuxF0(X(:,3,32)),SK(:,126)));
X(:,5,33)= X(:,5,32);
X(:,6,33)= add_mod_2_8(X(:,6,32),xor(AuxF1(X(:,5,32)),SK(:,127)));
X(:,7,33)= X(:,7,32);
X(:,8,33)= xor(X(:,8,32),add_mod_2_8(AuxF0(X(:,7,32)),SK(:,128)));
end
