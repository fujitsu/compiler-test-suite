module m1
contains
subroutine ss(a) 
integer,target:: a(:)
integer,target :: b(3)=[1,2,3]
call test31(a)
call test32(a)
call test33(a)
call test31(b(:))
call test32(b(:))
call test33(b(:))
contains
subroutine test31(u)
 integer,asynchronous:: u(3)
if (any(u/=[1,2,3])) print *,203
end subroutine
subroutine test32(u)
 integer,asynchronous:: u(*)
if (any(u(:3)/=[1,2,3])) print *,201
end subroutine
subroutine test33(u)
 integer,asynchronous ,intent(in),pointer:: u(:)
if (any(u/=[1,2,3])) print *,204
end subroutine
end subroutine
end
use m1
integer,target :: b(3)=[1,2,3]
call ss(b)
print *,'pass'
end
