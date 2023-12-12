program pro
real,parameter :: xx1 = (8.2744)
real*8,parameter :: xx2 = (8.2744)
real*16,parameter :: xx3 = (8.2744)

real :: rslt1=ACOSH(ACOSH(xx1))
real*8 :: rslt2=ACOSH(ACOSH(xx2))
real*16 :: rslt3=ACOSH(ACOSH(xx3))

if(.not.((rslt1)>1.68 .and. (rslt1)<1.70)) print *,101
if(.not.((rslt2)>1.68 .and. (rslt2)<1.70)) print *,102
if(.not.((rslt3)>1.68 .and. (rslt3)<1.70)) print *,103
print *, "pass"
end

