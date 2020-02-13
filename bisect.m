function p = bisect(f,a,b,tol) %To find the root of a function that cannot 
format long                    %be solved by hand, like like y=x^5+x-1

if f(a)*f(b)<0       %Anonymous function f must be continuous on [a,b]
    left = [a];      %Method solves for x position of roots that cross... 
    right = [b];     %... the x axis within tol of the real value    
    x = [(a+b)/2];   
    if f(a) == 0
        p = a;
    elseif f(b) == 0  %Checking that roots are not at the ends or center
        p = b;
    elseif f(x) == 0
        p = x;
    else
        while abs((left-right)/2)>tol %Bisects until tol is met
            if f(left)*f(x)<0
                right = x;
                x =(left+right)/2;
            else
                left = x;
                x = (left+right)/2;
            end
        end
    end
    p = (right+left)/2        %Outputs result
else
    p = 'No root in interval'
end
