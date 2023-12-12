program pro
real, parameter:: x1=1.1752012
real*8, parameter:: x2=1.1752012
real*16, parameter:: x3=1.1752012

real, parameter:: rslt1=ASINH(x1)
real*8, parameter:: rslt2=ASINH(x2)
real*16, parameter:: rslt3=ASINH(x3)


if( .not.(rslt1>0.8 .and. rslt1<1.1))  print *,101
if( .not.(rslt2>0.8 .and. rslt2<1.1))  print *,102
if( .not.(rslt3>0.8 .and. rslt3<1.1))  print *,103
print *, "pass"
end

