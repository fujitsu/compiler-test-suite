module m1
type y
integer:: x=1
end type
type(y):: v
end
use m1
integer::t
!$omp threadprivate( t )
if (v%x/=1) print *,101
!$omp parallel
t=1
if (t/=1) print *,101
write(9, '(z16.16)')loc(t)
!$omp end parallel
call chk
print *,'pass'
end
subroutine chk
character(16) :: r1(16)
rewind 9
do k=1,16
 read(9,'(a)',end=10) r1(k)
end do
10 continue
k=k-1
do n=1,k
 do m=n+1,k
   if (r1(n)==r1(m)) print *,201,n,m,r1(n),r1(m)
 end do
end do
end
