function res = add_mod_2_8 (x,y)
%x=[1;1;0;0;0;0;0;0];
%y=zeros(8,1);
xx=binaryVectorToDecimal(x','LSBFirst');
yy=binaryVectorToDecimal(y','LSBFirst');
z = decimalToBinaryVector(mod(xx+yy,255),8,'LSBFirst');
res = z' ;
end
