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


 


