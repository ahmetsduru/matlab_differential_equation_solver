function df = definedFun(t,y)
    df(1,1) = 2*y(1) + y(2) + 5*y(3) + exp(-2*t);
    df(2,1) = -3*y(1) - 2*y(2) - 8*y(3) + 2*exp(-2*t) - cos(3*t);
    df(3,1) = 3*y(1) + 3*y(2) + 2*y(3) + cos(3*t);
end