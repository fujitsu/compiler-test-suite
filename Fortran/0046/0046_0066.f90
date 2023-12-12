type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj = ty((/3.0,4.0/))
real :: x(2)=BESSEL_Y1(obj%cc1)
    if( .not.(x(1)>0.30 .and. x(1)<0.34))  print *,101
    if( .not.(x(2)>0.37 .and. x(2)<0.40))  print *,102
    print *,"pass"
end

