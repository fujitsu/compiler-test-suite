module mod
 interface s
   module procedure s,q,cs,cq
 end interface
 contains
 subroutine cs(single_complex)
  complex,intent(in)::single_complex
  if (abs(single_complex-(2.0,2.0))>0.0001)print *,102
 end subroutine
 subroutine cq(quad_complex)
  complex(16),intent(in)::quad_complex
  if (abs(quad_complex-(2.0,2.0))>0.0001)print *,202
 end subroutine
 subroutine s(single)
  real,intent(in)::single
  if (abs(single-2.0)>0.0001)print *,101
 end subroutine
 subroutine q(quad)
  real(16),intent(in)::quad
  if (abs(quad-2.0)>0.0001)print *,201
 end subroutine
end
subroutine foo
use mod
real(16)::R16=2.0
complex(16)::C16=2.0
call s(real(C16))
call s(cmplx(R16,R16))
end
call foo
print *,'pass'
end
