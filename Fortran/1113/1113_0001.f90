module m
type ty
integer :: arr(5)
contains
  procedure,nopass :: operate
  procedure,nopass :: operatechar
end type

type,extends(ty)::ty1
integer :: arr1(5)
contains
  procedure, nopass :: operate
  procedure,nopass :: operatechar
end type

type,extends(ty1)::ty2
integer :: arr2(5)
contains
  procedure, nopass :: operate
  procedure,nopass :: operatechar
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
        function operatechar(this,t1,t2,t3) result(c)
        class(*) :: this
        character(len=1), pointer::c
        character(len=1),target,intent(in)::t1,t2,t3
        select type(this)
         class is(ty)
         c=>t1
         class is(ty1)
         c=>t2
         class is(ty2)
         c=>t3
         class default
           stop 'fail'
        end select
        end function
end module

use m
integer, target::trg1=1000
integer, target::trg2=2000
integer, target::trg3=3000
character(len=1), target::ctrg1="a"
character(len=1), target::ctrg2="b"
character(len=1), target::ctrg3="c"
class(ty),allocatable :: obj1
type(ty) :: obj2
allocate(ty2::obj1,stat=obj2%operate(obj2,trg1,trg2,trg3),errmsg=obj2%operatechar(obj2,ctrg1,ctrg2,ctrg3))
if(trg1 .ne. 0)print*,"101"
if(ctrg1 .ne. "a")print*,"102"
trg1=5000
ctrg1="n"
deallocate(obj1,stat=obj2%operate(obj2,trg1,trg2,trg3),errmsg=obj2%operatechar(obj2,ctrg1,ctrg2,ctrg3))
if(trg1 .ne. 0)print*,"103"
if(ctrg1 .ne. "n")print*,"104"
obj1%operate(obj2,trg1,trg2,trg3)=10
if(trg1 /=10) print *,101,trg3
print *,"Pass"
end
