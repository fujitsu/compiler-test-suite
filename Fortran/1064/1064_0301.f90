integer,target :: b(3)=[1,2,3]
call test(b)
call test2(b)
call test3(b)
call test4(b)
print *,'pass'
contains
subroutine test(u)
 integer,asynchronous,contiguous:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
subroutine test2(u)
 integer,volatile    ,contiguous:: u(:)
if (any(u/=[1,2,3])) print *,202
end subroutine
subroutine test3(u)
 integer,asynchronous,contiguous,pointer:: u(:)
intent(in):: u
if (any(u/=[1,2,3])) print *,203
end subroutine
subroutine test4(u)
 integer   ,contiguous,pointer:: u(:)
intent(in):: u
if (any(u/=[1,2,3])) print *,204
end subroutine
end
