module m1
real, parameter::dd(7) = (/3.25,65.45,12.15,95.25,35.35,45.55,89.0/)
integer :: res1(1) = FINDLOC(dd,VALUE=45.55_16,KIND=8,MASK=dd>12.15_8)
end module

program main
use m1
if(res1(1)/=0)print *, 101
print *, "pass"
end 

