subroutine s1
type x
 integer,allocatable:: a(:)
end type
type (x) :: w(2,3),z(2,3)
allocate(w(1,1)%a(1),source=1)
allocate(w(2,1)%a(1),source=2)
allocate(w(1,2)%a(1),source=3)
allocate(w(2,2)%a(1),source=4)
allocate(w(1,3)%a(1),source=5)
allocate(w(2,3)%a(1),source=6)
z      = me( w )
call ss(  z , w )
contains
function me( w ) result( r )
type (x) :: w(:,:)
type (x) :: r(size(w,1),size(w,2))
r =w(:,:)
end function
subroutine ss( w1 ,w2 )
type (x) :: w1(:,:),w2(:,:)
do n2=1,ubound(w1,2)
do n1=1,ubound(w1,1)
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
