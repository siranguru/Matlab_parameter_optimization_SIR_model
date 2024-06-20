function data = SIR_ode(t,y,B) 
    
    data(1,1) = -B.p(1)*y(1)*y(2);
    data(2,1) = B.p(1)*y(1)*y(2) - B.p(2)*y(2);
    data(3,1) = B.p(2)*y(2);
    


end