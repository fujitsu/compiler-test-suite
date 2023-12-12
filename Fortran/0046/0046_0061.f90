program pro
type ty
  real(kind=8) :: cc1(3)
end type
type(ty),parameter :: obj = ty((/2.0,1.0,2.2/))
real :: rslt = BESSEL_Y1(obj%cc1(2))
    if(.not.(rslt<-0.780 .and. rslt>-0.784)) print*,101
    print *,"pass"
end

