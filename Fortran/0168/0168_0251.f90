subroutine s1
type x
 complex :: c1(2:3)
end type
type(x) ,parameter:: y=x(0)
integer,parameter :: k1(*)= ubound(y%c1% im)
type(x) :: z
integer::k5(1)
z=x(0)
 k5(:)=ubound(z%c1% im)
if (any(k1/=2)) print *,101
if (any(k5/=2)) print *,201,ubound(z%c1% im)
end
call s1
print *,'pass'
end
