subroutine s1
type ty1
 integer :: a
end type
type, extends(ty1) :: ty2
 integer :: b
end type
type (ty2),parameter :: &
    t2 = ty2(2,             b = 2+1-2)
if (t2%a/=2)print *,101
if (t2%b/=1)print *,102
end
call s1
print *,'pass'
end
