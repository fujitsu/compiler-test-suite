type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj = ty((/1.0,2.0/))
real :: x(2)=BESSEL_J1(obj%cc1)
    if( .not.(x(1)>0.43 .and. x(1)<0.46))  print *,101
    if( .not.(x(2)>0.56 .and. x(2)<0.58))  print *,102
    print *,"pass"
end

