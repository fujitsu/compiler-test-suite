module m1
contains 
subroutine ss(b)
integer,target :: b(:)
asynchronous:: b
call test(b)
call test2(b)
call test4(b)
contains
subroutine test(u)
 integer,asynchronous:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
subroutine test2(u)
 integer,volatile    :: u(:)
if (any(u/=[1,2,3])) print *,202
end subroutine
subroutine test3(u)
 integer,asynchronous,pointer:: u(:)
intent(in):: u
if (any(u/=[1,2,3])) print *,203
end subroutine
subroutine test4(u)
 integer   ,pointer:: u(:)
intent(in):: u
if (any(u/=[1,2,3])) print *,204
end subroutine
end subroutine
end
use m1
integer,target :: b(3)=[1,2,3]
call ss(b)
print *,'pass'
end
