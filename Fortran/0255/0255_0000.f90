Program test
real,parameter::r1(2) = [3.0,4.0]
real(8),parameter::r2(2) = [3.0,4.0]
real(16),parameter::r3(2) = [3.0,4.0]
real::x1=norm2(r1)
real(8)::x2 = norm2(r2)
real(16)::x3 = norm2(r3)
if(x1.ne.5.0)print*,101,x1
if(x2.ne.5.0)print*,102,x2
if(x3.ne.5.0)print*,103,x3
print*,"pass"
end
