module m1
contains
subroutine ss(a1,a2)
integer,intent(out),target::a1(:)
integer,            target::a2(:)
integer:: t(3)
do k=1,3
 t(k)=a2(k)
end do
do k=1,3
a1(k)=t (k)
end do
end subroutine
subroutine st(a1,a2)
integer,intent(out),target::a1(:)
integer,            target::a2(:)
a1(:)=a2(:)
end subroutine
end
subroutine s1
use m1
integer,            target::a2(4),a1(4)
a1=[1,2,3,4]
a2=[1,2,3,4]+10
call ss(a1(2:),a2(:3))
if (any(a1/=[1,11,12,13])) print *,301
a1=[1,2,3,4]
a2=[1,2,3,4]+10
call st(a1(2:),a2(:3))
if (any(a1/=[1,11,12,13])) print *,302
end
call s1
print *,'pass'
end


