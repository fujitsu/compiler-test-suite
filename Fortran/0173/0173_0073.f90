subroutine s1
type x
 integer,allocatable:: a(:)
end type
logical::t=.true.
type (x) :: w(2,3),z(2,3),q(2,3)
allocate(w(1,1)%a(1),source=1)
allocate(w(2,1)%a(1),source=2)
allocate(w(1,2)%a(1),source=3)
allocate(w(2,2)%a(1),source=4)
allocate(w(1,3)%a(1),source=5)
allocate(w(2,3)%a(1),source=6)
z      = merge( w , q , t )
call ss(  z , w )
contains
subroutine s( w1 ,w2 )
type (x) :: w1,w2
if (any(w1%a/=w2%a)) print *,101
end subroutine
subroutine ss( w1 ,w2 )
type (x) :: w1(:,:),w2(:,:)
do n1=1,ubound(w1,1)
do n2=1,ubound(w1,2)
if (any(w1(n1,n2)%a/=w2(n1,n2)%a)) print *,102
end do
end do
end subroutine
end
do k=1,100
call s1
end do
print *,'pass'
end
