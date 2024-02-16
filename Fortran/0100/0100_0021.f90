real*2,parameter::r2_1=+1.5_2+2.5_2
real*2,parameter::r2_2=-1.5_2+2.5_2
real*2,parameter::r2_3=-1.5_2+(-2.5_2)
real*2,parameter::r2_4=1.5_2+(-2.5_2)
real::r4
r4=r2_1
if(r4 /= 4.0)print*,"101"
r4=r2_2
if(r4 /= 1.0)print*,"102"
r4=r2_3
if(r4 /= -4.0)print*,"103"
r4=r2_4
if(r4 /= -1.0)print*,"104"
print*,"pass"
end
