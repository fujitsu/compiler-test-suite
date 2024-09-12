module m1
implicit none
type ty
    integer :: i = 10
contains
    procedure:: fun
    generic :: ptrfun => fun
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
    this%i = 20
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

if(obj%obj%ptrfun() .NE. 20)  print*, "FAIL1"
if(obj%arr(2)%ptrfun() .NE. 20) print*, "FAIL2"
if(obj%arrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL3"
if(obj%CPTR%ptrfun() .NE. 20) print*, "FAIL4"
if(obj%cArrPtr(2)%ptrfun() .NE. 20) print*, "FAIL5"
if(obj%cArrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL6"
if(ptr%obj%ptrfun() .NE. 20) print*, "FAIL7"
if(ptr%arr(2)%ptrfun() .NE. 20) print*, "FAIL8"
if(ptr%arrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL9"
if(ptr%CPTR%ptrfun() .NE. 20) print*, "FAIL10"
if(ptr%cArrPtr(2)%ptrfun() .NE. 20) print*, "FAIL11"
if(ptr%cArrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL12"
if(alloc%obj%ptrfun() .NE. 20) print*, "FAIL13"
if(alloc%arr(2)%ptrfun() .NE. 20) print*, "FAIL14"
if(alloc%arrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL15"
if(alloc%CPTR%ptrfun() .NE. 20) print*, "FAIL16"
if(alloc%cArrPtr(2)%ptrfun() .NE. 20) print*, "FAIL17"
if(alloc%cArrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL18"
if(cptr%obj%ptrfun() .NE. 20) print*, "FAIL19"
if(cptr%arr(2)%ptrfun() .NE. 20) print*, "FAIL20"
if(cptr%arrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL21"
if(cptr%CPTR%ptrfun() .NE. 20) print*, "FAIL22"
if(cptr%cArrPtr(2)%ptrfun() .NE. 20) print*, "FAIL23"
if(cptr%cArrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL24"
if(calloc%obj%ptrfun() .NE. 20) print*, "FAIL25"
if(calloc%arr(2)%ptrfun() .NE. 20) print*, "FAIL26"
if(calloc%arrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL27"
if(calloc%CPTR%ptrfun() .NE. 20) print*, "FAIL28"
if(calloc%cArrPtr(2)%ptrfun() .NE. 20) print*, "FAIL29"
if(calloc%cArrAlloc(2)%ptrfun() .NE. 20) print*, "FAIL30"

print*, "PASS"
end program
