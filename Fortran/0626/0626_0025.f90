subroutine s1
type ty1
 integer :: a
end type
type, extends(ty1) :: ty2
 integer :: b
end type
integer,parameter::a=2
type (ty2),parameter :: &
    t2 = ty2(a,             b = 2+1-2)
type (ty2),parameter :: &
    t3 = ty2(ty1 = ty1(2+1-1),  b = 1+(2+3-5))
type (ty2),parameter :: &
    t4 = ty2(a = 2+(index('12','2')-2),         b = (((1))))
if (t2%a/=2)print *,101
if (t2%b/=1)print *,102
if (t3%a/=2)print *,103
if (t3%b/=1)print *,104
if (t4%a/=2)print *,105
if (t4%b/=1)print *,106
end
call s1
print *,'pass'
end
