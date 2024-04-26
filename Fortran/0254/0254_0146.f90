program pro
implicit none
real(kind=8), allocatable :: arr(:)
integer :: d=1
real(kind=8) :: x
allocate(arr(2))
arr(1)= 3.0
arr(2)= 4.0
x=NORM2(arr,d)
if(x.ne.5.0) print*,101
print*,"pass"
end
