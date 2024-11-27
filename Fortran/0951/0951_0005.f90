module m
type ty
  integer :: ii = 3
end type
type,extends(ty) :: tty
 integer :: jj = 5
end type
type(tty),target,save :: trg
integer::a(5)
integer::b(5)
class(ty),pointer::cptr

type tt
    class(ty),pointer::cptr
end type
type tt2
    class(*),pointer::cptr
end type

type(tt) :: obj
type(tt2) :: obj2
type(tt2) :: obj3
integer::x
data x ,obj /10, tt(trg)/
data obj2 / tt2(trg)/
data b(1:5:2),obj3 /1,2,3, tt2(trg)/
data a, cptr /5*10,trg/
end
use m
  select type(A=>cptr)
  type is(tty)
     if(A%jj.ne. 5) print*,"121"
  class default
    print*,"122"
  end select
  print*,"Pass"
end

