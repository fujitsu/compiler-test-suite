module m1
contains
subroutine ss(a1,a2)
complex,intent(out),target::a1(3)
complex,            target::a2(3)
a2=[1,2,3]
do k=1,3
a1(k)=a2(k)
end do
end subroutine
subroutine st(a1,a2)
complex,intent(out),target::a1(3)
complex,            target::a2(3)
a2=[1,2,3]
a1(:)=a2(:)
call chk(a1)
end subroutine
end
subroutine s1
use m1
complex,            target::a1(4)
a1=[1,2,3,4]
call ss(a1(2:),a1(:3))
if (any(a1/=[1,1,1,1])) print *,301,a1
a1=[1,2,3,4]
call st(a1(2:),a1(:3))
if (any(a1/=[1,1,2,3])) print *,302,a1
end
call s1
print *,'pass'
end
subroutine chk(x)
complex x(3)
if (any(x/=[1,2,3])) print *,303,x
end


