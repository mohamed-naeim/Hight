function F1 = RoundF1 (x)
%x=[1 1 1 1 0 0 0 0]'
y = xor (circshift(x,3),circshift(x,4));
F1 = xor(y,circshift(x,6));
end