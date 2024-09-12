module m
type ty
integer :: arr(5)
contains
  procedure,nopass :: operate
end type

type,extends(ty)::ty1
integer :: arr1(5)
contains
  procedure, nopass :: operate
end type

type,extends(ty1)::ty2
integer :: arr2(5)
contains
  procedure, nopass :: operate
end type

contains
        function operate(this,d1,d2,d3) result(p)
        class(*) :: this 
        integer, pointer::p
        integer,target,intent(in)::d1,d2,d3
        select type(this)
         class is(ty)
         p=>d1
         class is(ty1)
         p=>d2
         class is(ty2)
         p=>d3
         class default
           stop 'fail'
        end select
        end function
end module
        
use m
integer, target::trg1=1000
integer, target::trg2=2000
integer, target::trg3=3000
class(ty),allocatable :: obj1
allocate(ty2::obj1)
obj1%operate(obj1,trg1,trg2,trg3)=10
if(trg3 /=10) print *,101
print *,"Pass"
end        
