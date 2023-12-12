module m1
real, parameter::x1=(1.6703)
real*8, parameter::x2=(1.6703)
real*16, parameter::x3=(1.6703)
contains
subroutine sub
  real:: rslt1=ACOSH(x=x1)
  real*8::rslt2=ACOSH(x=x2)
  real*16::rslt3=ACOSH(x=x3)
  if( .not.(((rslt1) > 1.09).and.((rslt1) <1.11))) print*,101
  if( .not.(((rslt2) > 1.09).and.((rslt2) <1.11))) print*,102
  if( .not.(((rslt3) > 1.09).and.((rslt3) <1.11))) print*,103
end subroutine sub
end module m1

program pro
use m1
call sub
print *,"pass"
end

