real*2::r2_1
real*2::r2_2
real::r4
data r2_1  /+1.5_2/
data r2_2  /-1.5E+1_2/
r4=r2_1
if(r4 /= 1.5)print*,"101"
r4=r2_2
if(r4 /= -1.5E+1_2)print*,"102"

print*,"pass"
end
