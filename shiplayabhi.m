%by Abhishek saini
%M.Tech power system svnit

clear all;
clc;
a=input('matrix');
b=input('matrix');
%a=[1 1 1;1 2 2;1 2 3];
%b=[5;6;8];
n=length(b);
m=eye(n,n);
for k=1:3;
    for j=1:3;
        for i=1:3;
            if j==k | i==k;
                continue;
            else
                m(k,k)= -1/(a(k,k));
                m(i,k)= -a(i,k)/a(k,k);
                m(k,j)= -a(k,j)/a(k,k);
                m(i,j)= a(i,j)-(a(i,k)*a(k,j))/a(k,k);
            end
        end
    end
    a=m;
end
i=-a;
x=i*b;