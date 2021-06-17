function [X]= DTFT (x,n, omega )
    X=zeros(size(omega));
    for i =1: length ( omega )
     X(i)=sum(x.* exp ( -1i* omega (i)*n));
    end
 
 end