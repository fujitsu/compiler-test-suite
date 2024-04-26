integer,asynchronous,pointer:: a(:)
integer,target :: b(3)=[1,2,3]
a=>b(:)
call test4(a)
print *,'pass'
contains
subroutine test3(u)
 integer,asynchronous,contiguous,pointer:: u(:)
if (any(u/=[1,2,3])) print *,203
end subroutine
subroutine test4(u)
 integer,asynchronous ,           pointer:: u(:)
if (any(u/=[1,2,3])) print *,204
end subroutine
end
