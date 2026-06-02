module m1
integer iii
contains
elemental function f(j) result(r)
intent(in)::j
character(kind=1,len=iii):: r
r='123456789'(1:j)
end function
subroutine s0(j)
integer ::x(9)=(/1,2,3,4,5,6,7,8,9/)
call s1(f((/(k,k=1,9)/)))
call s1(f( (/af(1),af(2),af(3),af(4),af(5),af(6),af(7),af(8),af(9)/) ) )
call s1(f(x))
call s1(f((/(k,k=1,j)/)))
end subroutine
subroutine s1(c)
character(kind=1,len=*)::c(:)
if (size(c)/=9)print *,'fail'
if (len(c)/=9)print *,'fail'
do k=1,9
if (c(k)/='123456789'(1:k))print *,'fail'
end do
end subroutine
function af(n) result(r)
integer r(1)
r=n
end function
end
use m1
iii=9
call s0(9)
print *,'pass'
end
