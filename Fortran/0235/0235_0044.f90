module mod012a
type ty2
 integer                         :: b
end type
type, extends(ty2) :: ty4
end type
end
module mod017b
use mod012a,only:ty4,ty2
end
module mod018b
use mod017b,wy2=>ty2
end
subroutine s1
use mod018b
type (ty4) :: ttt
ttt     = ty4(wy2( 1    ))
end
call s1
print *,'pass'
end
