subroutine s1
type x
 integer,allocatable:: a(:)
end type
logical::t=.true.
type (x) :: w(2,3),z(2,3)
allocate(w(1,1)%a(1),source=1)
allocate(w(2,1)%a(1),source=2)
allocate(w(1,2)%a(1),source=3)
allocate(w(2,2)%a(1),source=4)
allocate(w(1,3)%a(1),source=5)
allocate(w(2,3)%a(1),source=6)
call s( merge( w(1,1) , z(1,1) , t ), w(1,1) )
call s( ( w(1,1) ) , w(1,1) )
call ss(  w(1,1)  , w(1,1) )
contains
subroutine s( w1 ,w2 )
type (x) :: w1,w2
if (any(w1%a/=w2%a)) print *,101
end subroutine
subroutine ss( w1 ,w2 )
type (x),value :: w1
type (x) :: w2
if (any(w1%a/=w2%a)) print *,101
end subroutine
end
do k=1,100
call s1
end do
print *,'pass'
end
