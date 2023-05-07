function root = secant(func, x1, x2, threshold)
while(1)
    xn = x2-feval(func, x2)*(x2-x1)/(feval(func, x2)-feval(func, x1));
    if xn ~= 0
        rel_error = abs((xn-x1)/xn)*100;
    end
    x1 = x2;
    x2 = xn;

    if(rel_error < threshold)
        break;
    end
    disp("result: "+x2);
    disp("error: " + rel_error);
    disp(" ");
end
root = x2;