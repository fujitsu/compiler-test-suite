module mod
contains
subroutine ss(a1,a2)
integer,target::a1(2),a2(2)
a1=a2
end subroutine
subroutine tt(a1,a2)
integer,target,value::a1,a2
a1=a2
end subroutine
subroutine ww(a1,a2)
character(3),target,value::a1,a2
a1=a2
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

