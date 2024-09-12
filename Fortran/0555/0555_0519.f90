module m1
implicit none
type ty
    integer :: i = 10
    procedure(fun), pointer :: ptrfun => NULL()    
end type
type ty2
    type(ty) :: obj
    type(ty) :: arr(3)
    type(ty), allocatable :: arrAlloc(:)
    class(ty), pointer  :: cptr => NULL()
    class(ty), pointer  :: cArrPtr(:) => NULL()
    class(ty), allocatable :: cArrAlloc(:)
end type
contains
    integer FUNCTION fun(this)
    class(ty) :: this
    fun = this%i
    end FUNCTION
end module

use m1
implicit none
type(ty2), target :: obj
type(ty2), pointer :: ptr
type(ty2), allocatable :: alloc
class(ty2), pointer :: cptr
class(ty2), allocatable :: calloc

obj%obj%ptrfun => fun
obj%arr(2)%ptrfun => fun
obj%cptr=>obj%obj
obj%cArrPtr => obj%arr
allocate(obj%cArrAlloc, source = obj%arr)
allocate(obj%arrAlloc, source = obj%arr)

ptr=>obj
cptr=>obj
allocate(alloc, SOURCE = obj)
if (allocated(alloc%cArrAlloc)) then
  deallocate(alloc%cArrAlloc)
endif
allocate(alloc%cArrAlloc, source = obj%arr)

if (allocated(alloc%arrAlloc)) then
  deallocate(alloc%arrAlloc)
endif
allocate(alloc%arrAlloc, source = obj%arr)

allocate(calloc, SOURCE = obj)
if (allocated(calloc%cArrAlloc)) then
 deallocate(calloc%cArrAlloc)
endif
allocate(calloc%cArrAlloc, source = obj%arr)

if (allocated(calloc%arrAlloc)) then
  deallocate(calloc%arrAlloc)
endif
allocate(calloc%arrAlloc, source = obj%arr)

if(obj%obj%ptrfun() .NE. 10) print*, "FAIL 1"
if(obj%arr(2)%ptrfun() .NE. 10) print*, "FAIL 2"
if(obj%arrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 3"
if(obj%CPTR%ptrfun() .NE. 10) print*, "FAIL 4"
if(obj%cArrPtr(2)%ptrfun() .NE. 10) print*, "FAIL 5"
if(obj%cArrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 6"
if(ptr%obj%ptrfun() .NE. 10) print*, "FAIL 7"
if(ptr%arr(2)%ptrfun() .NE. 10) print*, "FAIL 8"
if(ptr%arrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 9"
if(ptr%CPTR%ptrfun() .NE. 10) print*, "FAIL  10"
if(ptr%cArrPtr(2)%ptrfun() .NE. 10) print*, "FAIL 11"
if(ptr%cArrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 12"
if(alloc%obj%ptrfun() .NE. 10) print*, "FAIL 13"
if(alloc%arr(2)%ptrfun() .NE. 10) print*, "FAIL 14"
if(alloc%arrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 15"
if(alloc%CPTR%ptrfun() .NE. 10) print*, "FAIL 16"
if(alloc%cArrPtr(2)%ptrfun() .NE. 10) print*, "FAIL 17"
if(alloc%cArrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 18"
if(cptr%obj%ptrfun() .NE. 10) print*, "FAIL 19"
if(cptr%arr(2)%ptrfun() .NE. 10) print*, "FAIL 20"
if(cptr%arrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 21"
if(cptr%CPTR%ptrfun() .NE. 10) print*, "FAIL 22"
if(cptr%cArrPtr(2)%ptrfun() .NE. 10) print*, "FAIL 23"
if(cptr%cArrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 24"
if(calloc%obj%ptrfun() .NE. 10) print*, "FAIL 25"
if(calloc%arr(2)%ptrfun() .NE. 10) print*, "FAIL 26"
if(calloc%arrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 27"
if(calloc%CPTR%ptrfun() .NE. 10) print*, "FAIL 28"
if(calloc%cArrPtr(2)%ptrfun() .NE. 10) print*, "FAIL 29"
if(calloc%cArrAlloc(2)%ptrfun() .NE. 10) print*, "FAIL 30"

print*, "PASS"
end program
