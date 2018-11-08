function [X,iter] = weighted_Jacobi( w,L,D,U,k)
B = (1-w)*eye(63)-w*(D\(L+U));
j = 1:63;
X = (sin(k*j*pi/63))';
iter = zeros(1,100);
for i = 1:100
    X = B*X;
    iter(i) = norm(X,inf);
end
end


 syms x
y=sin(x)*log(5-x)
y=taylor(y,x,0,'Order',7)


plot(1:100,iter1,1:100,iter2,1:100,iter3);xlabel('i');ylabel('f(i)');
str = '$$ k=1 $$';
text(86,0.9,str,'Interpreter','latex','FontSize',13);
str2 = '$$ k=3 $$';
text(75,0.4,str2,'Interpreter','latex','FontSize',13);
str3 = '$$ k=6 $$';
text(55,0.23,str3,'Interpreter','latex','FontSize',13);
title('k=1,3,6Ê±f(i)Ëæi±ä»¯')£»