program pro
real, parameter:: x1=1.5430806
real*8, parameter:: x2=1.5430806
real*16, parameter:: x3=1.5430806

real, parameter:: rslt1=ACOSH(x1)
real*8, parameter:: rslt2=ACOSH(x2)
real*16, parameter:: rslt3=ACOSH(x3)


if( .not.(rslt1>0.9 .and. rslt1<1.1))  print *,101
if( .not.(rslt2>0.9 .and. rslt2<1.1))  print *,102
if( .not.(rslt3>0.9 .and. rslt3<1.1))  print *,103
print *, "pass"

end

