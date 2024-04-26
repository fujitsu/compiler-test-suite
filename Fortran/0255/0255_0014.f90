program test
real,parameter::a(0) = 1.0
real,parameter::b(0,0) = 12.0
real::y = NORM2(a)
real::z =NORM2(b)
if(y.ne.0)print*,101
if(z.ne.0)print*,102
print*,"pass"
end
