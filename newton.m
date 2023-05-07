function root = newton(func1, func2, x0, threshold)

while(1)
    x = x0-feval(func1, x0)/feval(func2, x0);
    rel_error = abs((x-x0)/x)*100;
    disp("result: "+x);disp("error: "+rel_error);disp(" ");
    x0=x;
    if(rel_error<threshold)
        break
    end
end
root = x0;