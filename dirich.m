function U = dirich( f1, f2 , f3 , f4 , a , b , h , tol , max1)
% 求解拉普拉斯方程的狄利克雷法
% f1,f2,f3,f4 : 输入的边界函数
% a , b : 区间[0,a]，[0,b]
% h : 步长
% rol : 允许的误差
% max1 :设定的最大迭代次数
n = fix(a/h) + 1;
m = fix(b/h) + 1;
ave = (a*(feval(f1,0)+feval(f2,0))+b*(feval(f3,0)+feval(f4,0)))/(2*a+2*b);
U = ave*ones(m,n);

U(1,1:m)=feval( f3 , 0:h:(m-1)*h );
U(n,1:m)=feval( f4 , 0:h:(m-1)*h );
U(1:n,1)=feval( f1 , 0:h:(n-1)*h );
U(1:n,m)=feval( f2 , 0:h:(n-1)*h );
U(1,1) = (U(1,2) + U(2,1))/2;
U(1,m) = (U(1,m-1) + U(2,m))/2;
U(n,1) = (U(n-1,1) + U(n,2))/2;
U(n,m) = (U(n-1,m) + U(n,m-1))/2;

w = 4/(2+sqrt(4-(cos(pi/(n-1))+cos(pi/(m-1)))^2));

err = 1;
cnt = 0;
while((err>tol)&&(cnt<=max1))
    for j = 2:m-1
        for i = 2:n-1
            relx = w*(U(i,j+1)+U(i,j-1)+U(i+1,j)+U(i-1,j)-4*U(i,j))/4;
            U(i,j)=U(i,j)+relx;
            if(err <= abs(relx))
                err = abs(relx);
            end
        end
    end
    cnt = cnt + 1;
end

U = flipud(U');

end

