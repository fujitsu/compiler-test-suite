real*2,parameter::r2=12.5_2
real*16::r16
complex(kind=16)::c32
r16=r2
if(r16 /= r2)print*,"101"
c32=r2
if(c32 /= (r2,0.0))print*,"103"
print*,"pass"

end
