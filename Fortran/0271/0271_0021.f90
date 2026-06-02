real*2,parameter::r2_2= 10.5_2

res = 2 * r2_2 
 if(res /= 21.00) print*,"102"
res = 2_1 * r2_2 
 if(res /= 21.00) print*,"103"
res = 2_2 * r2_2 
 if(res /= 21.00) print*,"104"
res = 10.5_4 * r2_2 
 if(res /= 110.25) print*,"104"
res = 10.5_8 * r2_2 
 if(res /= 110.25) print*,"105"
res = 10.5_16 * r2_2 
 if(res /= 110.25) print*,"106"
print*,"PASS"
end





