module m1
contains 
subroutine ss(b)
integer,target :: b(:)
asynchronous:: b
 integer,asynchronous,pointer:: uu(:)
uu=>b
if (any(uu/=[1,2,3])) print *,2031
contains
subroutine test3(u)
 integer,asynchronous,pointer:: u(:)
intent(in):: u
if (any(u/=[1,2,3])) print *,203
end subroutine
end subroutine
end
use m1
integer,target :: b(3)=[1,2,3]
call ss(b)
print *,'pass'
end
