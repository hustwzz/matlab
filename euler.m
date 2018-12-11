function E = euler( f,a,b,ya,h )
%欧拉法
% f : 输入的函数名
% a , b : 左右端点的横坐标
% ya : 初值，即y(a)
% h : 步长
X = a : h : b;
Y = zeros(1,length(X));
Y(1) = ya;
for  j = 1 : length(X)-1
    Y(j+1) = Y(j) + h*feval(f,Y(j));
end
    E = [X' Y'];
end

