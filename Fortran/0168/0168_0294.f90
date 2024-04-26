integer,pointer:: a(:)
integer,target :: b(3)=[1,2,3]
a=>b(:)
call test(a)
print *,'pass'
contains
subroutine test(u)
 integer,asynchronous,           pointer:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
end
