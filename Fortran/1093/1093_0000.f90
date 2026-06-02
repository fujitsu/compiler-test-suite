module mod
interface aaa
 procedure sub1
 procedure sub2
end interface
contains
subroutine sub1(a1,a2,b3)
integer,optional :: a1,a2,b3
if (a2.ne.1) print *,'NG1 '
if (b3.ne.2) print *,'NG2 '
end subroutine
subroutine sub2(a1,a2,a3,a4)
real   ,optional :: a1,a2,a3,a4
print *,'NG3'
end subroutine
end
use mod
call aaa(b3=2,a2=1)
print *,'pass'
end
