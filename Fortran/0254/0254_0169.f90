program pro
implicit none
real :: arr(3,3)
real :: x
arr= 3.0
x=NORM2(arr(3:2,2:1))
if(x.ne.0.0) print*,101
print*,"pass"
end
