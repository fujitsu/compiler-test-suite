call test()
print *,'pass'
end
subroutine test()
type ty1
integer :: a,b,c
end type
type(ty1):: t
t = ty1(c=1,b=2,a=3)
if (t%a.ne.3) print *,'err'
if (t%b.ne.2) print *,'err'
if (t%c.ne.1) print *,'err'
end
