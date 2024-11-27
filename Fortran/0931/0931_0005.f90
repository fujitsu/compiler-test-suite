module m1
type ty
integer::ii
real,allocatable::rr(:)
contains
        final :: final1
        procedure,nopass :: f1
end type

type,extends(ty) :: ty1
integer,allocatable :: i1
real :: r1
contains
        procedure,nopass :: f2
end type

type(ty),target::tobj
type(ty1),allocatable,target::tobj1

contains
        subroutine final1(ob)
        type(ty)::ob
        deallocate(ob%rr)
        end subroutine

        function f1()
        type(ty),pointer :: f1
        f1=>tobj
        end function

        function f2()
        type(ty1),pointer :: f2
        f2=>tobj1
        end function
        
end module

use m1
type(ty)::obj
type(ty1)::obj1
allocate(obj%rr(2))
allocate(obj1%rr(2))
allocate(obj1%i1)
allocate(tobj%rr(3))
allocate(tobj1)
allocate(tobj1%rr(3))
allocate(tobj1%i1)
tobj1%rr=(/11000.11,12000.11,55555.11/)
tobj1%ii=1100
tobj1%i1=11111
tobj1%r1=122.11
obj%rr=(/10.11,11.11/)
obj%ii=1
obj1%rr=(/1000.11,2000.11/)
obj1%ii=100
obj1%i1=111
obj1%r1=22.11
obj1%f2()=obj1
obj1%rr=(/212.11,32.32/)
if (size(tobj1%rr) /= 2) print *,103
if (all(tobj1%rr /= (/1000.11,2000.11/)))print *,104
print *,"Pass"
end
