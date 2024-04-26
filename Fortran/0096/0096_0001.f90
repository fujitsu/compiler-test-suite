        module m1
complex*8, parameter::x1=(0.6703, 3.0)
contains
subroutine sub
  real *8:: rslt1=LOG_GAMMA(x=x1%im)
        if(.not.(rslt1>0.68 .and. rslt1<0.70)) print*,101,rslt1
        end subroutine sub
end module m1

program pro
use m1
call sub
print *,"pass"
end
