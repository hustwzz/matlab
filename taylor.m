syms x
y=sin(x)*log(5-x)
y=taylor(y,x,0,'Order',7)
