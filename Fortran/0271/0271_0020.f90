real*2,parameter::r2_1= 650.0_2 * 1.5_2
real*2,parameter::r2_2= 10.5_2

real(kind=4) :: res
 if(r2_1 /= 975.00) print*,"101"
res = r2_2 * 2
 if(res /= 21.00) print*,"102"
res = r2_2 * 2_1
 if(res /= 21.00) print*,"103"
res = r2_2 * 2_2
 if(res /= 21.00) print*,"104"
res = r2_2 * r2_2 
 if(res /= 110.25) print*,"106"

print*,"PASS"
end


