real*2,parameter::r2_1=+1.5_2
real*2,parameter::r2_2=-1.5_2
real::r4
r4=r2_1
if(r4 /= +1.5_2)print*,"101"
r4=r2_2
if(r4 /= -1.5_2)print*,"102"
print*,"pass"
end
