function text = TextBinary (plain_text)
%plain_text ={ '00' '00' '00' '00' '00' '00' '00' '00'};
text = zeros(8,8); %matrix formed for plain binary, each colomn is a byte.
plainn = [];
for i=1:8
    plainn = hexToBinaryVector(plain_text(i),8,'LSBFirst');
    text(:,i) = plainn;
end
end
