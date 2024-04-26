type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj = ty((/3.0,4.0/))
real :: rslt1(2)=LOG_GAMMA(obj%cc1)
if( .not.(rslt1(1)>0.68 .and. rslt1(1)<0.70))  print *,101
if( .not.(rslt1(2)>1.78 .and. rslt1(2)<1.80))  print *,102
    print *,"pass"
end
