module m
implicit none
type ty
    integer :: a
end type
interface gen
   subroutine as1(s1)
      import ty
      type(ty),allocatable:: s1
   end subroutine

   subroutine ps2(s2)
      import ty
      type(ty),pointer ::s2
   end subroutine
end interface
end module

subroutine as1(s1)
use m
   type(ty),allocatable ::s1
   s1%a=2000 
   if(s1%a /=2000) print*,101
end subroutine

subroutine ps2(s2)
use m
   type(ty),pointer ::s2
   if(s2%a /= 100)print*,102 
end subroutine

use m
implicit none
type(ty),allocatable::alloc
type(ty),pointer::ptr
integer::i=100
allocate(alloc)
allocate(ptr)
ptr%a = i
call gen(alloc)
call gen(ptr)
        print *,"pass"
end
