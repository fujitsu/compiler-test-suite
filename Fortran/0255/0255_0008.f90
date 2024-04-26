Program test
real,parameter::r1(1,1) = 3.4
real*8,parameter::r2(1,1) = 3.6
real*16,parameter::r3(1,1) = 3.11
real::x1(1)=norm2(r1,1)
real*8::x2(1) = norm2(r2,1)
real*16::x3(1) = norm2(r3,1)
real::x11=norm2(r1)
real*8::x22 = norm2(r2)
real*16::x33 = norm2(r3)
if(x1(1).ne.3.4)print*,101
if(x2(1).ne.3.6)print*,102
if(x3(1).ne.3.11)print*,103
if(x11.ne.3.4)print*,101
if(x22.ne.3.6)print*,102
if(x33.ne.3.11)print*,103
print*,"pass"
end
