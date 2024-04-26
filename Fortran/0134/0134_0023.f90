module m1
contains
subroutine s1(a1,k)
integer,dimension(:),pointer::a1
call ss( (/ (k+1 , k+2,nn=0,k)/) ,a1 )
end subroutine
subroutine ss(n , a)
integer:: n(:)
integer:: a(2)
if (n(1)/=1)print *,1001,n(1)
if (n(2)/=2)print *,1002,n(2)
if (a(1)/=1)print *,2001,a(1)
if (a(2)/=3)print *,2002,a(2)
end subroutine
end
use m1
integer,dimension(3),target ::t1
integer,dimension(:),pointer::a1
k=0
t1=(/1,2,3/)
a1=> t1(1:3:2)
call s1(a1,k)
t1(2:3)=(/3,4/)
a1=>t1
print *,'pass'
end


