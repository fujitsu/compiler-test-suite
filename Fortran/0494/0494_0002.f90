module m1
implicit none
integer,parameter::k2=2,k4=4
integer::n2=2
end
use m1
real(k2):: r2,r2a(2)
complex(k2):: c2,c2a(2)
r2=2._2
r2a=2._2
c2=(2._2,3._2)
c2a=(2._2,3._2)
call s1([r2],1)
call s1([(r2,k=1,2)],2)
call s1([(r2,k=1,n2)],2)
call s1([((r2,k=1,2),kk=1,2)],4)
call s1([((r2,k=1,n2),kk=1,n2)],4)
call s1([r2,r2],2)
call s1([(r2,r2,k=1,2)],4)
call s1([(r2,r2,k=1,n2)],4)
call s1([((r2,r2,k=1,2),kk=1,2)],8)
call s1([((r2,r2,k=1,n2),kk=1,n2)],8)
call s1([r2a],2)
call s1([(r2a,k=1,2)],4)
call s1([(r2a,k=1,n2)],4)
call s1([((r2a,k=1,2),kk=1,2)],8)
call s1([((r2a,k=1,n2),kk=1,n2)],8)
call s1([r2a,r2a],4)
call s1([(r2a,r2a,k=1,2)],8)
call s1([(r2a,r2a,k=1,n2)],8)
call s1([((r2a,r2a,k=1,2),kk=1,2)],16)
call s1([((r2a,r2a,k=1,n2),kk=1,n2)],16)
print *,'pass'
contains
subroutine s1(r2,n) 
real(k2):: r2(:)
do m=1,n
if (r2(m)/=2._k2) print *,9001,m,real(r2(m),4)
end do
end 
subroutine s2(c2,n) 
complex(k2):: c2(:)
do m=1,n
if (c2(m)/=(2._k2,3._k2)) print *,9002,m,cmplx(c2(m))
end do
end 
end 
