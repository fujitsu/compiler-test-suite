real*2,parameter::r2=12.5_2
real::r4
real*8::r8
complex(kind=4)::c8
complex(kind=8)::c16
r4=r2
if(r4 /= r2)print*,"101"
c8=r2
if(c8 /= (r2,0.0))print*,"103"
r8=r2
if(r8 /=  r2)print*,"104"
c16=r2
if(c16 /= (r2,0.0) )print*,"105"

print*,"pass"

end
