module m1
type ty
class(*),allocatable :: cptr
integer::aa
end type

type t2
  type(ty),pointer::com1
end type 
end module

pure subroutine pp(s)
use m1
integer,intent(out)::s
type(t2) :: obj1,obj2
allocate(obj1%com1,obj2%com1)
obj1%com1%aa=44
obj2 = obj1
s=obj2%com1%aa
end subroutine
integer::a=0
call pp(a)
if(a /=44) print*,101
print*,"PASS"
end

