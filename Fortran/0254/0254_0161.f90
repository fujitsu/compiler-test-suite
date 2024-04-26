program pro
implicit none
real :: arr(5)
integer :: d=1
real :: x
arr= 3.0
x=NORM2(arr(3:2),d)
if(x.ne.0.0) print*,101
print*,"pass"
end
