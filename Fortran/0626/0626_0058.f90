subroutine s1
type ty1
 integer :: a
end type
type, extends(ty1) :: ty2
 integer :: b
end type
integer,parameter::a=2
type (ty2),parameter :: &
    t2 = ty2(max(1,index('12','2'),-2),b = 2+1-2)
type (ty2),parameter :: &
    t3 = ty2(ty1 = ty1(max(1,index('12','2'),-2)),  b = 1+(2+3-5))
type (ty2),parameter :: &
    t4 = ty2(a = max(1,index('12','2'),-2), b = (((1))))
type (ty2),parameter :: &
    t5 = ty2(a = max(1,index('12','2'),-2) + max(1,index('12','2'),-2), b = (((1))))
type (ty2),parameter :: &
    t6 = ty2(b=2+1-2,a=max(1,index('12','2'),-2))
type (ty2),parameter :: &
    t7 = ty2(b = 1+(2+3-5),ty1 = ty1(max(1,index('12','2'),-2)))
type (ty2),parameter :: &
    t8 = ty2( b = (((1))),a = max(1,index('12','2'),-2))
type (ty2),parameter :: &
    t9 = ty2(b = (((1))),a = max(1,index('12','2'),-2) + max(1,index('12','2'),-2))
if (t2%a/=2)print *,101
if (t2%b/=1)print *,102
if (t3%a/=2)print *,103
if (t3%b/=1)print *,104
if (t4%a/=2)print *,105
if (t4%b/=1)print *,106
if (t5%a/=4)print *,107
if (t5%b/=1)print *,108
if (t6%a/=2)print *,109
if (t6%b/=1)print *,110
if (t7%a/=2)print *,111
if (t7%b/=1)print *,112
if (t8%a/=2)print *,113
if (t8%b/=1)print *,114
if (t9%a/=4)print *,115
if (t9%b/=1)print *,118
end
call s1
print *,'pass'
end
