program pro
implicit none
real :: arr(5)
real :: x(3:2)
arr= 3.0
x=BESSEL_YN(3,arr(3:2))
if(ANY(shape(x) .ne. 0)) print*,101
print*,"pass"
end
