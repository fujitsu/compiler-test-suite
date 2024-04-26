program test
Real*4,parameter::num1(6) =reshape([12.23,-44.23,23.2,11.34,34.5,21.56],[6])
Real*8,parameter::num2(6) =reshape([12.23,-44.23,23.2,11.34,34.5,21.56],[6])
Real*16,parameter::num3(6)=reshape([12.23,-44.23,23.2,11.34,34.5,21.56],[6])
Real*4::r1=norm2(num1)
real*8::r2 = norm2(num2)
real*16::r3 = norm2(num3)
if(r1<= 66.54160.and.r1>= 66.54161)print*,"101"
if(r2<= 66.54160.and.r2>= 66.54161)print*,"102"
if(r3<= 66.54160.and.r3>= 66.54161)print*,"103"
print*,"pass"
end
