 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
  intrinsic ceiling 
 end
 subroutine s1
  use m1
  if ( kind(ceiling(-1.9))/=kind(2))print *,'fail'
  if ( kind(ceiling(-1.9d0))/=kind(2))print *,'fail'
  if ( kind(x01(ceiling(-1.9)))/=kind(2))print *,'fail'
  contains
  function   x01(k1) result(ix01)
   if (kind(k1)/=kind(1))print *,'fail'
   ix01=0
  end function
end
