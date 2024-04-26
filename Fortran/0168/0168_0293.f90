integer,pointer:: a(:)
integer,target,dimension(3) :: b=[1,2,3]
a=>b(:)
call test(a)
print *,'pass'
contains
subroutine test(u)
 integer,contiguous:: u(:)
if (any(u/=[1,2,3])) print *,101
end subroutine
end
