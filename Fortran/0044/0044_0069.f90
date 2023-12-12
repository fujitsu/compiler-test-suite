module m1
real, parameter::x1=(0.6703)
real*8, parameter::x2=(0.6703)
real*16, parameter::x3=(0.6703)
contains
subroutine sub
  real:: rslt1=ATANH(x=x1)
  real*8::rslt2=ATANH(x=x2)
  real*16::rslt3=ATANH(x=x3)
  if( .not.(((rslt1) > 0.80).and.((rslt1) <0.83))) print*,101
  if( .not.(((rslt2) > 0.80).and.((rslt2) <0.83))) print*,102
  if( .not.(((rslt3) > 0.80).and.((rslt3) <0.83))) print*,103
  end subroutine sub
end module m1

program pro
use m1
call sub
print *,"pass"
end

