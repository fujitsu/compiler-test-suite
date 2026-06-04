type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj = ty((/10.0,20.0/))
real :: rslt1(2)=ERFC_SCALED(obj%cc1)
if( .not.(rslt1(1)>0.054 .and. rslt1(1)<0.058))  print *,101
if( .not.(rslt1(2)>0.026 .and. rslt1(2)<0.029))  print *,102

    print *,"pass"
end

