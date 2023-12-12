module m1
complex, parameter::x1=(0.6703, 0.2457)
complex*16, parameter::x2=(0.6703, 0.2457)
complex*32, parameter::x3=(0.6703, 0.2457)
contains
subroutine sub
  complex:: rslt1=ATANH(x=x1)
  complex*16::rslt2=ATANH(x2)
  complex*32::rslt3=ATANH(x3)
  if( .not.((real(rslt1) > 0.69).and.(real(rslt1) <0.71))) print*,101
  if( .not.((imag(rslt1) > 0.38).and.(imag(rslt1) <0.40))) print*,102
  if( .not.((real(rslt2) > 0.69).and.(real(rslt2) <0.71))) print*,103
  if( .not.((imag(rslt2) > 0.38).and.(imag(rslt2) <0.40))) print*,104
  if( .not.((real(rslt3) > 0.69).and.(real(rslt3) <0.71))) print*,105
  if( .not.((imag(rslt3) > 0.38).and.(imag(rslt3) <0.40))) print*,106
  end subroutine sub
end module m1

program pro
use m1
call sub
print *,"pass"
end

