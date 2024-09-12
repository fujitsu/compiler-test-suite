program main
implicit none
real(kind=16), pointer :: arr(:)
integer :: d=1
real(kind=16) :: x
allocate(arr(2))
arr(1)= 3.0
arr(2)= 4.0
x=NORM2(arr,dim=d)
if(x.ne.5.0) print*,101,x
print*,"pass"
end
