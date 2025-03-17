module mdef
type x
 integer scalar
 integer array(2)
end type
contains
 subroutine sub(tx,ty)
 type (x),target::tx(1:)
 type (x),optional,target::ty(1:)
 tx%scalar   = 1
 if ( present(ty) ) then
 ty%array(1) = 1
 endif
 end subroutine
end module

use mdef
 type (x)::ta(2)

 call sub(ta,ta)
 call sub(ta)
if ( ta(1)%scalar  == 1 .and. ta(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ta(1)
 print *,ta(2)
endif
end
