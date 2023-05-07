function inter = Lagrange_interpol(x, y, new_x)
% 라그랑주 보간법
n = length(x);
sum = 0;
for i=1:n
    temp = y(i);
    for j=1:n
        if(i~=j)
            temp = temp*(new_x-x(j))/(x(i)-x(j));
        end
    end
    sum = sum + temp;
end
inter = sum;