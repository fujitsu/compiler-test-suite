module m1
implicit none
type ty
    integer :: i = 10
    procedure(fun), pointer :: ptrfun => NULL()    
end type
contains
    integer FUNCTION fun(this)
    class(ty) :: this
    fun = this%i
    end FUNCTION
end module

use m1
implicit none
type(ty), target :: obj(3)
type(ty), pointer :: ptr(:)
type(ty), allocatable :: alloc(:)
class(ty), pointer :: cptr(:)
class(ty), allocatable :: calloc(:)

obj(2)%ptrfun =>fun
ptr => obj
allocate(alloc, SOURCE = obj)
cptr => obj
allocate(calloc, SOURCE = obj)

if(obj(2)%ptrfun() .NE. 10) print*, "FAIL 101"

if(ptr(2)%ptrfun() .NE. 10) print*, "FAIL 201"

if(alloc(2)%ptrfun() .NE. 10) print*, "FAIL 301"

if(cptr(2)%ptrfun() .NE. 10) print*, "FAIL 401"

if(calloc(2)%ptrfun() .NE. 10) print*, "FAIL 501"

print*, "PASS"
end program
