module mod012a
type ty2
 integer                         :: b
end type
type, extends(ty2) :: ty4
end type
end
module mod017b
use mod012a,only:ty2
end
module mod018b
use mod017b,wy2=>ty2
end
subroutine s1
use mod018b
type (wy2) :: ttt
ttt     = wy2(b= 1    )
if (ttt%b/=1) print *,2002
end
call s1
print *,'pass'
end
