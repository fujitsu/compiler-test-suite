module m1
contains
subroutine s1(a)
integer,allocatable,intent(out)::a(:)
end subroutine
subroutine s2(a)
integer,pointer,intent(out)::a(:)
end subroutine
end
use m1
integer,allocatable::a(:)
integer,pointer    ::p(:)
allocate(a(2),p(2))
call s1(a)
call s2(p)
print *,'pass'
end
