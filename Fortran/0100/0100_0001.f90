complex(kind=2),parameter::c4=(22.5_2,20.5_2)
real::r4
real*8::r8
real*16::r16
r4=c4
if(r4 /= 22.5)print*,"102"
r8=c4
if(r8 /= 22.5)print*,"103"
r16=c4
if(r16 /= 22.5)print*,"104"
print*,"pass"

end
