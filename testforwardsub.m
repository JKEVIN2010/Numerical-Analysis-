function X = testforwardsub(L,B)
n = length(B);
X = zeros(n,1);

for i = 1:n
    X(i) = (B(i) - L(i,1:i-1)*X(1:i-1))/L(i,i);
end


    

