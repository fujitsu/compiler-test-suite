!
!
 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
  intrinsic cmplx 
 end
 subroutine s1
  use m1
  if ( kind(cmplx(1,1))/=kind(1.2))print *,'fail'
  if ( kind(cmplx(1,1,4))/=4)print *,'fail'
  contains
  subroutine sub(c)
   implicit complex(c)
   if (kind(c(1.,1.))/=kind(1.))print *,'fail'
  end subroutine
end
