function F0 = RoundF0 (x)
%x=[1 1 1 1 0 0 0 0]'
y = xor (circshift(x,1),circshift(x,2));
F0 = xor(y,circshift(x,7));
end