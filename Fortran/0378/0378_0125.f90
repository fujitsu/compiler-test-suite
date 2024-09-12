subroutine foo1
real,pointer :: x(:,:,:)
x=>null()
call sub(x,x)
contains
subroutine sub (x,y)
real :: x(:,:,:)
real :: y(:,:,:)
pointer x
pointer y
if (associated(x))print *,1
if (associated(y))print *,2
end subroutine
end
call foo1
print *,'pass'
end
