function X = testbacksubs(U,B)
%This function performs a simple backsubstitution
n = length(B);
X = zeros(n,1);
for i = n:-1:1
    X(i) = (B(i)- sum(U(i,i+1:n)*X(i+1:n)))/U(i,i);
end