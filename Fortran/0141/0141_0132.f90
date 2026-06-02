module m1
contains
subroutine sub1(a)
integer,asynchronous,pointer::a(:)
if (any(a/=[1,2])) print *,101
end subroutine
subroutine sub2(a)
integer,asynchronous::a(:)
if (any(a/=[1,2])) print *,102
end subroutine
subroutine sub3(a)
integer,volatile,pointer::a(:)
if (any(a/=[1,2])) print *,103
end subroutine
subroutine sub4(a)
integer,volatile   ::a(:)
if (any(a/=[1,2])) print *,104
end subroutine
end
subroutine s1
use m1
integer,asynchronous,pointer::a(:)
allocate(a(2))
a=[1,2]
call sub1(a)
call sub2(a)
call sub3(a)
call sub4(a)
end
subroutine s2
use m1
integer,volatile,pointer::a(:)
allocate(a(2))
a=[1,2]
call sub1(a)
call sub2(a)
call sub3(a)
call sub4(a)
end
call s1
call s2
print *,'pass'
end
