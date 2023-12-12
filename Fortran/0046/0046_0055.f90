module m1
complex*8, parameter::x1=(0.6703, 1.0)
contains
subroutine sub
  real *8:: rslt=BESSEL_Y1(x=x1%im)
    if(.not.(rslt<-0.780 .and. rslt>-0.784)) print*,101
    end subroutine sub
end module m1

program pro
use m1
call sub
print *,"pass"
end

