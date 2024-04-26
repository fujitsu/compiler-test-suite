Program test
real,parameter::r11(-3:-3) = -10
real*8,parameter::r12(-3:-3) = -10
real*16,parameter::r13(-3:-3) = -10
integer(kind=2),parameter::d=3
real,parameter::r21(1,d) =reshape([ -4.0,-2.0,-3.0],[1,3])
real(8),parameter::r22(1,d) =reshape([ -4.0,-2.0,-3.0],[1,3])
real(16),parameter::r23(3,1) = reshape([-3.0,5.0,7.9],[3,1])
real::x11=norm2(r11)
real*8::x12=norm2(r12)
real*16::x13=norm2(r13)
real::x21(3) = norm2(r21,1)
real(8)::x22(3) = norm2(r22,1)
real(16)::x23(3) = norm2(r23,2)
if(x11.ne.10.0)print*,101,x11
if(x12.ne.10.0)print*,102,x12
if(x13.ne.10.0)print*,103,x13
if(x21(1).ne.4.0)print*,104,x21(1)
if(x21(2).ne.2.0)print*,105,x21(2)
if(x21(3).ne.3.0)print*,106,x21(3)
if(x22(1).ne.4.0)print*,107,x22(1)
if(x22(2).ne.2.0)print*,108,x22(2)
if(x22(3).ne.3.0)print*,109,x22(3)
if(x23(1).ne.3.0)print*,109,x23(1)
if(x23(2).ne.5.0)print*,109,x23(2)
if(x23(3).ne.7.9)print*,109,x23(3)
print*,"pass"
end
