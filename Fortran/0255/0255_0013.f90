program test
real,parameter::a(2:1) = 7.0
real(8),parameter::b(5:2)=20.0
real(16),parameter::c(9:2)=12.0
real,parameter::d(3:2,4:1) =5.6
real::x = NORM2(a)
real::y= NORM2(b)
real::z= NORM2(c)
real::p = NORM2(d)
if(x.ne.0.0)print*,101
if(y.ne.0.0)print*,102
if(z.ne.0.0)print*,103
if(p.ne.0.0)print*,104
print*,"PASS"
end
