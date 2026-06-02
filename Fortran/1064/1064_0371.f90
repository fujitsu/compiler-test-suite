type x
 integer::k
end type
type(x),pointer::p
integer,target::t=1
allocate(p,source=x(1))
call foo(p%k)
call foo(t)
print *,'pass'
contains
subroutine foo(z)
integer,pointer,intent(in):: z
if (z/=1) print *,101
end subroutine
end
