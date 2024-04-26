module mod012a
type ty2
 integer                         :: b=1
end type
type :: ty4
  type(ty2)::x=ty2()
end type
end
module mod017b
use mod012a,only:ty4
end
module mod018b
use mod017b,wy4=>ty4
end
subroutine s1
use mod018b
type (wy4) :: ttt
ttt     = wy4( )
if (ttt%x%b/=1) print *,2002
end
call s1
print *,'pass'
end
