module m1
type t
 integer,allocatable::i
end type

type::t2
 type(t)::tt
 integer::x=0
end type
integer::pt3=3
contains
subroutine s1()

type(t2),allocatable     ::a
 
     allocate(  a)
!print *,1003
    a%tt= t(pt3)
!print *,1004
end
end
use m1

do n=1,100
call s1
end do
  print*,'sngg582r : pass'
end

