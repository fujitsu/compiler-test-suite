call test()
print *,'pass'
end
subroutine test()
type ty1
integer :: a
end type
type, extends(ty1) :: ty2
integer :: b
end type
type (ty1) :: t1
type (ty2) :: t2
t2 = ty2(1, b = 1)
if (t2%a.ne.1) print *,'err'
if (t2%b.ne.1) print *,'err'
t2 = ty2(ty1 = ty1(1), b = 1)
if (t2%a.ne.1) print *,'err'
if (t2%b.ne.1) print *,'err'
t2 = ty2(a = 1, b = 1)
if (t2%a.ne.1) print *,'err'
if (t2%b.ne.1) print *,'err'
end
