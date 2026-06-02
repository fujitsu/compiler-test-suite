module m
implicit none

type ty
    integer :: a
end type

type, extends(ty) :: t2
integer :: bb
end type

interface sub
   subroutine sub1(s1)
      import ty,t2
      class(t2),allocatable:: s1
   end subroutine

   subroutine sub2(s2)
      import ty,t2
      class(ty),pointer ::s2
   end subroutine
end interface
end module

subroutine sub1(s1)
use m
   type(t2) :: obj=t2(2000,500)
   class(t2),allocatable:: s1
   allocate(s1,source=obj)
   if(s1%a /=2000) print*,101
end subroutine

subroutine sub2(s2)
use m
   class(ty),pointer ::s2
   if(s2%a /= 100)print*,102 
end subroutine

use m
implicit none
class(t2),allocatable::alloc
class(ty),pointer::ptr
integer::i=100
allocate(ptr)
ptr%a = i

call sub(alloc)
call sub(ptr)
print *,"pass"
end
