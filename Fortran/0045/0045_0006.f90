! Consecutive calling
Intrinsic :: HYPOT
real*8,parameter :: xx1 = 3.0
real*8,parameter :: yy1 = 2.0

real :: rslt1=HYPOT(xx1,yy1)+HYPOT(3.0,6.0)

if(.not.(rslt1>10.30 .and. rslt1<10.33)) print *,101
    print *,"pass"
    end

