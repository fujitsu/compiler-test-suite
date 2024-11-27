module m1
real::arr(7)
interface
integer function fun(dmy)
real :: dmy(7)
end function
end interface
end module

program main
use m1
integer::ii
arr = (/3.25,65.45,12.15,95.25,35.35,45.55,89.0/)
ii =fun(arr)
print*,ii
end
integer function fun(dd)
real :: dd(7)
integer :: res1(1)
res1 = FINDLOC(dd,VALUE=45.55_16,KIND=8,MASK=dd>12.15_8)
fun = res1(1)
end function

