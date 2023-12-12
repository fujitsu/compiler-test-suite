module m1
real, parameter::x1=(0.6703)
real*8, parameter::x2=(0.6703)
real*16, parameter::x3=(0.6703)
contains
subroutine sub
  real:: rslt1=ASINH(x=x1)
  real*8::rslt2=ASINH(x=x2)
  real*16::rslt3=ASINH(x=x3)
  if( .not.(((rslt1) > 0.61).and.((rslt1) <0.63))) print*,101
  if( .not.(((rslt2) > 0.61).and.((rslt2) <0.63))) print*,102
  if( .not.(((rslt3) > 0.61).and.((rslt3) <0.63))) print*,103
end subroutine sub
end module m1

program pro
use m1
call sub
print *,"pass"
end

