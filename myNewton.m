function p = myNewton(f,fprime,x0,tol) %Input anon function f and its symbolic derivative fprime
                                       %Uses Newton's Method to find Roots
x_array = [x0, x0-(f(x0)/fprime(x0))]; %We only need positions n and n-1 for this algorithm

while abs(x_array(2)-x_array(1))>tol %Run until we are within tol of a root
    x_array(1) = x_array(2);         %Shift back
    x_array(2) = x_array(1)-f(x_array(1))/fprime(x_array(1)); %Create next x from previous x
end

p = x_array(2);   %Output result
end