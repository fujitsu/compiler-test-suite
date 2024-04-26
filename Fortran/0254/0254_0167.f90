program pro
implicit none
real :: arr(2)
integer :: d=1
arr(1)= 3.0
arr(2)= 4.0
print*,NORM2(dim=d,x=arr)
print*,"pass"
end
