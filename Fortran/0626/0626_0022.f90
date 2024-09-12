subroutine s1
type ty1
 integer :: a
end type
type, extends(ty1) :: ty2
 integer :: b
end type
integer,parameter::a=2
type (ty2),parameter :: &
    t2 = ty2(a,             b = 1)
type (ty2),parameter :: &
    t3 = ty2(ty1 = ty1(2),  b = 1)
type (ty2),parameter :: &
    t4 = ty2(a = 2,         b = 1)
if (t2%a/=2)print *,101
if (t2%b/=1)print *,102
if (t3%a/=2)print *,103
if (t3%b/=1)print *,104
if (t4%a/=2)print *,105
if (t4%b/=1)print *,106
end
subroutine s2
type ty1
 integer::a,b,c
end type
type(ty1),parameter:: &
t=ty1(c=1,b=2,a=3)
type(ty1),parameter:: &
y=ty1(3,2,1)
if (t%a/=3)print *,107
if (t%b/=2)print *,108
if (t%c/=1)print *,109
if (y%a/=3)print *,110
if (y%b/=2)print *,111
if (y%c/=1)print *,112
end
call s1
call s2
print *,'pass'
end
