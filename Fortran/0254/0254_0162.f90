program pro
implicit none
real :: arr(5)
Intrinsic :: NORM2
integer :: d=1
real :: x
arr= 5.0
arr(3)= 3.0
arr(4)= 4.0
x=NORM2(dim=d,x=arr(3:4))
if(x.ne.5.0) print*,101
print*,"pass"
end
