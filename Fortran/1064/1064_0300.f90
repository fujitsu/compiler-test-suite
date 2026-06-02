module m1
contains
subroutine ss(a)
integer,asynchronous:: a(:)
pointer:: a
call test(a)
contains
subroutine test(u)
 integer,asynchronous:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
end subroutine
subroutine tt(a)
integer,volatile    :: a(:)
pointer:: a
call test(a)
contains
subroutine test(u)
 integer,asynchronous:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
end subroutine
subroutine ww(a)
pointer:: a
integer,volatile    :: a(:)
call test(a)
contains
subroutine test(u)
 integer,asynchronous:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
end subroutine
subroutine qq(a)
integer,volatile    :: a(:)
pointer:: a
call test(a)
contains
subroutine test(u)
 integer,volatile    :: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
end subroutine
end
use m1
integer,target :: t(3)=[1,2,3]
integer,pointer :: b(:)
b=>t
call ss(b)
call tt(b)
call ww(b)
call qq(b)
print *,'pass'
end
