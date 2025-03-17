subroutine foo1
real :: x(2,3,4)
call sub(x)
contains
subroutine sub (x)
real :: x(:,:,:)
integer,parameter :: as = size(lbound(x))
real :: b(as)
if (size(b)/=3)print *,'fail'
end subroutine
end
subroutine foo2
real ,pointer:: x(:,:,:)
allocate(x(2:3,3:5,4:7))
call sub(x)
contains
subroutine sub (x)
real :: x(:,:,:)
pointer x
real ::b(size(lbound(x)))
if (size(b)/=3)print *,'fail'
end subroutine
end
call foo1
call foo2
print *,'pass'
end
