integer,pointer,asynchronous:: a(:)
integer,target :: b(3)=[1,2,3]
a=>b(:)
call test01(a)
call test02(a)
call test03(a)
call test04(a)
call test05(a)
print *,'pass'
contains
subroutine test01(u)
 integer,contiguous:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
subroutine test02(u)
 integer           :: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
subroutine test03(u)
 integer           ,pointer:: u(:)
if (any(u/=[1,2,3])) print *,201
end subroutine
subroutine test04(u)
 integer           :: u(3)
if (any(u/=[1,2,3])) print *,201
end subroutine
subroutine test05(u)
 integer           :: u(*)
if (any(u(:3)/=[1,2,3])) print *,201
end subroutine
end
