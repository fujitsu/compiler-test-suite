module m1
contains 
subroutine ss(b)
integer,target :: b(:)
asynchronous:: b
call test3(b)
contains
subroutine test3(u)
 integer,asynchronous:: u(:)
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
