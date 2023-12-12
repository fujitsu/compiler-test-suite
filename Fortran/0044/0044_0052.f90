program pro
real, parameter:: x1=0.76159416
real*8, parameter:: x2=0.76159416
real*16, parameter:: x3=0.76159416

real, parameter:: rslt1=ATANH(x1)
real*8, parameter:: rslt2=ATANH(x2)
real*16, parameter:: rslt3=ATANH(x3)


if( .not.(rslt1>0.98 .and. rslt1<1.10))  print *,101
if( .not.(rslt2>0.98 .and. rslt2<1.10))  print *,102
if( .not.(rslt3>0.98 .and. rslt3<1.10))  print *,103
print *, "pass"

end

