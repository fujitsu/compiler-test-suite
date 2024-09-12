subroutine s1
type ty1
 integer :: a
end type
type, extends(ty1) :: ty2
 integer :: b
end type
type (ty2),parameter :: &
     t4 = ty2(    2+ index('12','2')   ,                1   )
if (t4%a/=4)print *,105
if (t4%b/=1)print *,106
end
call s1
print *,'pass'
end
