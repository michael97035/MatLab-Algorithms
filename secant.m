function p = secant(f,x0,x1,tol) %Method for finding roots of anon function f
                                 %Over continuous interval [x0,x1]
x2 = x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);  %Within tol of actual root

while abs(x2-x1)>tol
    x0 = x1
    x1 = x2
    x2 = x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);
end

p = x2;
end