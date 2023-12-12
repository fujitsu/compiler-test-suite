program pro
real,parameter :: xx1 = (0.2744)
real*8,parameter :: xx2 = (0.2744)
complex*16,parameter :: xx3 = (0.2744)

real :: rslt1=ATANH(ATANH(xx1))
real*8 :: rslt2=ATANH(ATANH(xx2))
real*16 :: rslt3=ATANH(ATANH(xx3))

if(.not.((rslt1)>0.27 .and. (rslt1)<0.29)) print *,101
if(.not.((rslt2)>0.27 .and. (rslt2)<0.29)) print *,201
if(.not.((rslt3)>0.27 .and. (rslt3)<0.29)) print *,301
print *, "pass"
end

