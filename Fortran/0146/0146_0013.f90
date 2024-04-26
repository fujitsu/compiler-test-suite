module mod
contains
subroutine ss(a1,a2)
integer,target::a1(2),a2(2)
a1=a2
end subroutine
end
subroutine s1
use mod
integer,target::a1(3)
a1=2
call ss(a1,a1)
end
call s1
print *,'pass'
end

