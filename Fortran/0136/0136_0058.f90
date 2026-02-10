use, intrinsic :: ieee_arithmetic
real x, y
x = 0.0
y=0.0
y = ieee_value(y, ieee_quiet_nan)
if(ieee_unordered(x,y).neqv..true._4) print *,'err'
x=-1.0
if(ieee_unordered(0.0,sqrt(x)).neqv.ieee_support_sqrt(1.0)) print *,'err2'
print *,"pass"
end
