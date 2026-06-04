module m1
type t
 integer,allocatable::i(:)
end type

type,extends(t)::t2
 integer::x=0
end type
type,extends(t2)::t3
 complex::y=0
end type
integer::pt3(2)=3
contains
subroutine s1(a,n)

class(t),allocatable     ::a(:)
 
  a(2)%i(2) =5 

  select type(a)
  type is(t3)
!print *,1003
    a(2)%t2= t2(pt3)
!print *,1004
  end select
!print *,2000
end
end

subroutine sss
use m1
class(t),allocatable ::a(:)
do n=3,3
     allocate( t3:: a(2))
 allocate(a(2)%i(2))

call s1(a,n)
     if (a(2)%i(2)/=3 ) print *,504,a(2)%i(2)
  deallocate(a)
end do
end
do n=1,100
call sss
end do
  print*,'sngg580r : pass'
end

