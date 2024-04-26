program pro
implicit none
real :: arr(2)
integer :: d=1
integer :: x
arr(1)= 3.0
arr(2)= 4.0
x=NORM2(dim=d,x=arr)
if(x.ne.5.0) print*,101
print*,"pass"
end
