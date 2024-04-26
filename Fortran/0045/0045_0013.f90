real*8,parameter :: xx1 = 3.0

real*8,parameter :: yy1 = 2.0

real :: rslt1=HYPOT(HYPOT(xx1,yy1),HYPOT(xx1,yy1))

if(.not.(rslt1>5.08 .and. rslt1<5.10)) print *,101,rslt1
print *, "pass"

end
