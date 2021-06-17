function [X]= CTFourierTransform (x,t,omega ,dT)
     for j =1: length ( omega )
    X(j)=sum(x.* exp ( -1i* omega (j)*t))*dT;
    end
end