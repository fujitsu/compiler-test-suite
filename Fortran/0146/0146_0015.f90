module mod
contains
subroutine ss(a1,a2)
integer,target::a1(2),a2(2)
integer,pointer::p(:)
a1=a2
p=>a1
if (any(p/=2)) print *,101
end subroutine
subroutine tt(a1,a2)
integer,target,value::a1,a2
integer,pointer::p
a1=a2
p=>a1
if (   (p/=3)) print *,102
end subroutine
subroutine ww(a1,a2)
character(3),target,value::a1,a2
character(:),pointer::p
a1=a2
p=>a1
if (   (p/='123')) print *,103
end subroutine
end
subroutine s1
use mod
integer,target::a1(3)
integer,target::b1
character(3),target::c1
a1=2
call ss(a1,a1)
b1=3
call tt(b1,b1)
c1='123'
call ww(c1,c1)
end
call s1
print *,'pass'
end

