Nmax = 50;
c = -0.158 + 1i*1.038;
z = [];

for x = -1:0.0008:0.3
    for y = -0.8:0.0008:0.5
       z0 = x + 1i*y;
       z(end+1) = z0 + c;
       it = 1;
       while abs(z(it)) <= 2 && it < Nmax
           z(end+1) = z(it)^2 + c;
           it = it + 1;
       end
       z = [];
       if it == Nmax
           plot(x, y, 'k')
           hold on
           axis([-1 0.3 -0.8 0.5]);
       end
    end
end