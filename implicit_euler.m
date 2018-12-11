function E = implicit_euler( a,b,ya,h )
% 隐式欧拉法
% a , b : 左右端点的横坐标
% ya : 初值，即y(a)
% h : 步长
X = a : h : b;
Y = zeros( 1 , length(X));
Y(1) = ya;
for j = 2 : length(X)
    Y( j ) = Y(j - 1)/(1 + 4*h);
end
    E = [ X'  Y' ];
end
