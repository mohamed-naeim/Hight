function mat = const_gen() %constant generation
s=[];
s(1)=0; %initial values for d1
s(2)=1;
s(3)=0;
s(4)=1;
s(5)=1;
s(6)=0;
s(7)=1;
mat=zeros(7,128); %mat stores values of d1 to d128
for i=1:7
    mat(i)=s(i); %d1
end    
for i =2:128
    s(i+6) = xor (s(i+2),s(i-1)); %s calculations
end

for i=2:128
    for j=1:7
        mat(j,i) = s (j+i-1); %d2 to d128
    end
end
end






