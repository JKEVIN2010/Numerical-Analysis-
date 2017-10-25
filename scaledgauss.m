function [X,A,val] = scaledgauss(A,B)
%This program solves Ax = B using gaussian
%Elimination with scaled row pivoting
n = length(B);
S = zeros(n,1);
val = 0;

for i = 1:n
    
    S(i) = max(abs(A(i,1:n)));
end
for k = 1:n-1
    P = k;
    for j = k+1:n
        if abs(A(j,k))/S(j) > abs(A(P,k))/S(P)
            P = j;
        end
    end
    if P ~= k
        %Swap rows k and p
        val = val + 1;
        temp = A(P,:);
        A(P,:) = A(k,:);
        A(k,:) = temp;
        temp = B(P);
        B(P) = B(k);
        B(k) = temp;
    end
    
%Perform Gaussian elimination

    for i = k+1:n
        z = A(i,k)/A(k,k);
        A(i,k) = 0;
        for j = k+1:n
            A(i,j) = A(i,j)- z*A(k,j);
        end
        B(i) = B(i) - z*B(k);
    end

end

X = testbacksubs(A,B);
            
       
        


