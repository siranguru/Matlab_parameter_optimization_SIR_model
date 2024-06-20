function [C,Ceq] = nonlconprob1(x)
    C = 25 - x(1)*x(2)*x(3)*x(4);
    Ceq = 40 - sum(x.^2);
end