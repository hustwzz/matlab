function E = implicit_euler( a,b,ya,h )
% ��ʽŷ����
% a , b : ���Ҷ˵�ĺ�����
% ya : ��ֵ����y(a)
% h : ����
X = a : h : b;
Y = zeros( 1 , length(X));
Y(1) = ya;
for j = 2 : length(X)
    Y( j ) = Y(j - 1)/(1 + 4*h);
end
    E = [ X'  Y' ];
end
