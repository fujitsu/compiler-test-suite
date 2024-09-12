module m1
type first
integer::ii
end type

type, extends(first)::second
real::rr
end type

type, extends(second)::third
complex::cc
end type
end module

program main
use m1
interface
integer function fun(d1,d2)
import first,second
class(first),pointer,intent(in)::d1
class(second),pointer,intent(in)::d2
end function        
end interface
call sub
contains
subroutine sub
type(third)::obj1
type(second)::obj2
class(first),allocatable,target::tar1
class(second),allocatable,target::tar2
obj1%cc=(0,0)
obj1%rr=0.0
obj1%ii=0
obj2%rr=0.0
obj2%ii=0
allocate(tar1,source=obj2)
allocate(tar2,source=obj1)
if (fun(tar1,tar2)==10)print*,"Pass"
if (tar1%ii /=2)print*,103
if (tar2%rr /=3.50)print*,104
end subroutine
end

integer function fun(dmy1,dmy2)
use m1
class(first),pointer,intent(in)::dmy1
class(second),pointer,intent(in)::dmy2
if (.NOT.associated(dmy1))print*,101
if (.NOT.associated(dmy2))print*,102
dmy1%ii=2
dmy2%rr=3.50
select type(dmy2)
   type is (second)
        print*,"Error"
   class is (second)
        print*,"Pass"
   class default
        print*,"error"
end select
fun=10
end function
