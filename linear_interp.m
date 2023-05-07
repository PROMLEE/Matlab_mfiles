function px = linear_interp(x, y, new_x)
% 선형 보간법
% given data 벡터
% new_x : 보간을 필요로 하는 x 값

m = length(x);
for i = 1:m -1 %new_x가 어디에 있는지를 파악
    if new_x >= x(i) && new_x < x(i+1)
        new_i = 1;
    end
end
yf = y(new_i+1) - y(new_i);
xf = x(new_i+1) - x(new_i);
px = (yf/xf)*(new_x-x(new_i)+y(new_i));