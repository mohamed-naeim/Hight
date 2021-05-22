function WK = WK_gen (MK)    %whitening key generation

WKK = zeros(1,8);

for i = 1:8
    if i<5 
        WKK(i) = MK(i+12);
    else 
        WKK(i) = MK(i-4);
    end
end
%WK_hex = dec2hex(WKK);
%disp('Whitening Key in Decimal ')
%disp(WKK)
%disp('Whitening Key in Hex ')
%disp(WK_hex)
WK = zeros (8,8);
WKKK =[];
for i=1:8
      WKKK =  decimalToBinaryVector(WKK(i),8,'LSBFirst');
      WK(:,i)=WKKK;
end
end




       