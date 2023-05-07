function root = bisection(func, x1, x2, threshold)
if feval(func, x1)*feval(func, x2)>0
    disp('no')
    return
end
rel_error = 100.0;x3=x1;
while(1)
    xold = x3; x3=(x1+x2)/2;
    if x3 ~= 0
        rel_error=abs((x3-xold)/x3)*100;
    end
    if feval(func, x1)*feval(func, x3)<0
        x2 = x3;
    else
        x1 = x3;
    end
    if rel_error <= threshold
        break;
    end
end
root=x3;