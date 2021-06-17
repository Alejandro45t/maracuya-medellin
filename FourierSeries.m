function [f] =FourierSeries (x,T,n)
    dt=T/100;
    t=0:dt:T;
    omega0=(2*pi)/T;
    index=1;     
    for k=-n:n
        c(index)=dt*sum(x.*exp(-1i*k*2*pi*t/T))/(T);        
        index=index+1;
    end    
    ak=real(c);
    bk=imag(c);
    index_2=1;  
    ce=zeros(1,length(t));    
    for k=-n:n
        ce=ce+c(index_2)*exp(1i*k*omega0*t);
        %ce=ce + ak(index_2)*cos(k*omega0*t) +bk(index_2)*sin(k*omega0*t);
        index_2=index_2+1;
    end
    f=(ce);
end