real*2,parameter::r2=12.5_2
complex(kind=2)::c44
real(kind=2)::r22
r22=r2
if(r22 /= 12.5)print*,"101"
c44=r2 
if(c44 /= (12.5,0.0))print*,"102"
print*,"pass"

end
