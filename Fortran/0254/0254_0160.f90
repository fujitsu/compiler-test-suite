program pro
implicit none
real :: arr(1,1,1,1,1)
real :: x(1,1,1,1)
arr(1,1,1,1,1)= 5.0
x=NORM2(x=arr,dim=5-4)
if(x(1,1,1,1).ne.5.0) print*,101
print*,"pass"
end
