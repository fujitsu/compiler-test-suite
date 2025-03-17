module mdef
type x
 integer scalar
 integer array(2)
end type
end module

use mdef

 type (x)::ta(2)

 call sub(ta)
 call ent(ta)


if ( ta(1)%scalar  == 2 .and. ta(1)%array(1) == 2 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ta(1)
 print *,ta(2)
endif
end
subroutine sub(ta)
use mdef
 type (x)::ta(2)
 ta%scalar   = 1
 ta%array(1) = 1
 return
 entry ent(ta)
 ta%scalar   = 2
 ta%array(1) = 2
end subroutine
