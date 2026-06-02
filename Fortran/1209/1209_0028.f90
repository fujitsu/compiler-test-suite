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
subroutine s1()

type (t3),allocatable     ::a
     allocate(  a)
!  print *,1003
    a%t2= t2(pt3)
!print *,1004
end
end

use m1

do n=1,100
call s1
end do
  print*,'sngg583r : pass'
end

