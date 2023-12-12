type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj = ty((/1.0,2.0/))
real :: x(2)=BESSEL_J0(obj%cc1)
    if( .not.(x(1)>0.70 .and. x(1)<0.80))  print *,101
    if( .not.(x(2)>0.20 .and. x(2)<0.25))  print *,102
    print *,"pass"
end

