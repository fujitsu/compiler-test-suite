module mdef
type x
 integer scalar
 integer array(2)
end type
end module

use mdef

 type (x)::ta(2)

 call sub(ta)


if ( ta(1)%scalar  == 1 .and. ta(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ta(1)
 print *,ta(2)
endif

contains
subroutine sub(ta)
 type (x)::ta(2)
 ta%scalar   = 1
 ta%array(1) = 1
end subroutine
end
