!
!
 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
 end
 subroutine s1
  use m1
  character,allocatable::a(:)
  integer,parameter::p01=kind((/.true./))
  if ( kind(allocated(a))/=kind(.true.))print *,'fail'
  if ( kind(all((/.true./)))/=kind(.true.))print *,'fail'
  if (p01/=kind(.false.))print *,'fail'
  if ( kind(x01(allocated(a)))/=kind(.true.))print *,'fail'
    contains
      function x01(a)
      implicit logical(a,x)
      if (kind(a)/=kind(.true.))print *,'fail'
      if (kind(x01)/=kind(.true.))print *,'fail'
      x01=.true.
      end function
end
