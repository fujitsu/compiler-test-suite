program pro
real(kind=4),parameter :: xx1 = 20.0
real(kind=8),parameter :: xx2 = 20.0
real(kind=16),parameter :: xx3 = 20.0

real(kind=4) :: rslt1=ERFC_SCALED(ERFC_SCALED(xx1))
real(kind=8) :: rslt2=ERFC_SCALED(ERFC_SCALED(xx2))
real(kind=16) :: rslt3=ERFC_SCALED(ERFC_SCALED(xx3))

if(.not.(rslt1>0.967 .and. rslt1<0.969)) print *,101
if(.not.(rslt2>0.967 .and. rslt2<0.969)) print *,102
if(.not.(rslt3>0.967 .and. rslt3<0.969)) print *,103
print *, "pass"
end

