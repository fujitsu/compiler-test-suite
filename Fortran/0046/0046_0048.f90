type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj = ty((/1.0,2.0/))
real :: x(2)=BESSEL_Y0(obj%cc1)
    if( .not.(x(1)>0.086 .and. x(1)<0.089))  print *,101
    if( .not.(x(2)>0.50 .and. x(2)<0.54))  print *,102
    print *,"pass"
end

