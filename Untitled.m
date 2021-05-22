clear
clc
pinname = input ('enter pin name ','s');
num_of_bits = input ('num of bits ');
offset = input ('enter offset ');

clc
formatSpec = '(pin name="%s[%u]" offset = %f width=0.4000 depth=0.5)\n';
i=0+16+16+16+16+16+16+16;
while i < 16 +16+16+16+16+16+16+16
    fprintf (formatSpec,pinname,i , offset)
    offset = offset +2 ;
    i=i+1;
end