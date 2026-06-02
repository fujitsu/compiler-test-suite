program pro
Intrinsic :: ERFC_SCALED
 real,parameter :: xx1 = (10.0)
 real,parameter :: yy1 = (20.0)
 real(kind=8),parameter :: xx2 = (10.0)
 real(kind=8),parameter :: yy2 = (20.0)
 real(kind=16),parameter :: xx3 = (10.0)
 real(kind=16),parameter :: yy3 = (20.0)
 real :: rslt1=ERFC_SCALED(xx1)+ERFC_SCALED(yy1)
 real :: rslt2=ERFC_SCALED(xx2)+ERFC_SCALED(yy2)
 real :: rslt3=ERFC_SCALED(xx3)+ERFC_SCALED(yy3)
    if(.not.(rslt1>0.083 .and. (rslt1)<0.086)) print *,101,rslt1
    if(.not.(rslt2>0.083 .and. (rslt2)<0.086)) print *,102,rslt2
    if(.not.(rslt3>0.083 .and. (rslt3)<0.086)) print *,103,rslt3
    print *,"pass"
end

