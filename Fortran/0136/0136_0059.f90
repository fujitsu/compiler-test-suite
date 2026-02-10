use, intrinsic :: ieee_arithmetic
real x(2), y(2), z
x = 0.0
y=-0.0
y = ieee_value(y, ieee_quiet_nan)
if(any(logical((/.true.,.true./)).neqv..true.)) print *,'err'
if(any(ieee_unordered(x,y).neqv..true.)) print *,'err'
z=-1.0
if(any(ieee_unordered([0.0],sqrt(z)).neqv.ieee_support_sqrt([1.0]))) print *,'err2'
print *,"pass"
end
