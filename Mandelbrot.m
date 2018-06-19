Nmax = 50;
z0 = 0;
z = [];

for x = -0.16:0.000003:-0.1582
    for y = 1.0379:0.000003:1.0385
       c = x + 1i*y;
       z(end+1) = c;
       it = 1;
       while abs(z(it)) <= 2 && it < Nmax
           z(end+1) = z(it)^2 + c;
           it = it + 1;
       end
       z = [];
       if it == Nmax
           plot(x, y, 'k')
           hold on
           axis([-0.16 -0.157 1.0379 1.0385]);
       end
    end
end
