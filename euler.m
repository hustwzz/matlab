function E = euler( f,a,b,ya,h )
%ŷ����
% f : ����ĺ�����
% a , b : ���Ҷ˵�ĺ�����
% ya : ��ֵ����y(a)
% h : ����
X = a : h : b;
Y = zeros(1,length(X));
Y(1) = ya;
for  j = 1 : length(X)-1
    Y(j+1) = Y(j) + h*feval(f,Y(j));
end
    E = [X' Y'];
end

