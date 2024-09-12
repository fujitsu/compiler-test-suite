program pro
implicit none
real(kind=16), pointer :: arr(:)
real(kind=16) :: x(2)
allocate(arr(2))
arr(1)= 10.0
arr(2)= 20.0
x=ERFC_SCALED(arr)
if( .not.(x(1)>0.055 .and. x(1)<0.058))  print *,101
if( .not.(x(2)>0.026 .and. x(2)<0.029))  print *,102
        print*,"pass"
end
