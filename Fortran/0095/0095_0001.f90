program pro
implicit none
real(kind=8), allocatable :: arr(:)
real(kind=8) :: x(2)
allocate(arr(2))
arr(1)= 3.0
arr(2)= 4.0
x=LOG_GAMMA(arr)
if( .not.(x(1)>0.68 .and. x(1)<0.70))  print *,101
if( .not.(x(2)>1.78 .and. x(2)<1.80))  print *,102
print*,"pass"
end
