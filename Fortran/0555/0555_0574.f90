module m1
implicit none
type ty
    integer :: i = 10
   contains
    procedure::  ptrfun => fun
end type
type ty2
    type(ty) :: obj
    type(ty), allocatable :: objArr(:)
    class(ty), pointer :: cptr => NULL()
    class(ty), allocatable  :: calloc
    class(ty), pointer  :: cptrArr(:) => NULL()
    class(ty), allocatable :: callocArray(:)
end type
contains
    integer FUNCTION fun(this)
    class(ty) :: this
    fun = this%i
    end FUNCTION
end module

use m1
implicit none
type(ty2), target :: obj(3)
type(ty2), pointer :: ptr(:)
type(ty2), allocatable :: alloc(:)
class(ty2), pointer :: cptr(:)
class(ty2), allocatable :: calloc(:)

allocate(obj(2)%objArr(2))
obj(2)%cptr => obj(2)%obj
allocate(obj(2)%calloc, SOURCE = obj(2)%obj)
obj(2)%cptrArr => obj(2)%objArr
allocate (obj(2)%callocArray, SOURCE = obj(2)%objArr)
ptr => obj

allocate(alloc, SOURCE = obj)

if (allocated(alloc(2)%calloc )) then
  deallocate(alloc(2)%calloc )
endif
allocate(alloc(2)%calloc , SOURCE = obj(2)%obj)

if (allocated(alloc(2)%callocArray)) then
   deallocate(alloc(2)%callocArray )
endif
allocate(alloc(2)%callocArray , SOURCE = obj(2)%callocArray)

if (allocated(alloc(2)%objArr)) then
  deallocate(alloc(2)%objArr)
endif
allocate(alloc(2)%objArr, SOURCE=obj(2)%objArr)


cptr => obj
allocate(calloc, SOURCE = cptr)

if (allocated(calloc(2)%objArr))then
  deallocate(calloc(2)%objArr)
endif
allocate(calloc(2)%objArr, SOURCE=obj(2)%objArr)

if (allocated(calloc(2)%calloc)) then
  deallocate(calloc(2)%calloc)
endif
allocate(calloc(2)%calloc , SOURCE = obj(2)%obj)

if (allocated(calloc(2)%callocArray)) then
  deallocate(calloc(2)%callocArray )
endif
allocate(calloc(2)%callocArray , SOURCE = obj(2)%callocArray)

if(obj(2)%obj%ptrfun() .NE. 10)  print*, "FAIL 1"
if(obj(2)%objArr(2)%ptrfun() .NE. 10) print*, "FAIL 2 "
if(obj(2)%cptr%ptrfun() .NE. 10) print*, "FAIL 3"
if(obj(2)%calloc%ptrfun() .NE. 10) print*, "FAIL 4"
if(obj(2)%cptrArr(2)%ptrfun() .NE. 10) print*, "FAIL 5"
if(obj(2)%callocArray(2)%ptrfun() .NE. 10) print*, "FAIL 6"
if(ptr(2)%obj%ptrfun() .NE. 10) print*, "FAIL 7"
if(ptr(2)%objArr(2)%ptrfun() .NE. 10) print*, "FAIL 8"
if(ptr(2)%cptr%ptrfun() .NE. 10) print*, "FAIL 9"
if(ptr(2)%calloc%ptrfun() .NE. 10) print*, "FAIL 10"
if(ptr(2)%cptrArr(2)%ptrfun() .NE. 10) print*, "FAIL 11"
if(ptr(2)%callocArray(2)%ptrfun() .NE. 10) print*, "FAIL 12"
if(alloc(2)%obj%ptrfun() .NE. 10) print*, "FAIL 13"
if(alloc(2)%objArr(2)%ptrfun() .NE. 10) print*, "FAIL 14"
if(alloc(2)%cptr%ptrfun() .NE. 10) print*, "FAIL 15"
if(alloc(2)%calloc%ptrfun() .NE. 10) print*, "FAIL 16"
if(alloc(2)%cptrArr(2)%ptrfun() .NE. 10) print*, "FAIL 17"
if(alloc(2)%callocArray(2)%ptrfun() .NE. 10) print*, "FAIL 18"
if(cptr(2)%obj%ptrfun() .NE. 10) print*, "FAIL 19"
if(cptr(2)%objArr(2)%ptrfun() .NE. 10) print*, "FAIL 20"
if(cptr(2)%cptr%ptrfun() .NE. 10) print*, "FAIL 21"
if(cptr(2)%calloc%ptrfun() .NE. 10) print*, "FAIL 22"
if(cptr(2)%cptrArr(2)%ptrfun() .NE. 10) print*, "FAIL 23"
if(cptr(2)%callocArray(2)%ptrfun() .NE. 10) print*, "FAIL 24"
if(calloc(2)%obj%ptrfun() .NE. 10) print*, "FAIL 25"
if(calloc(2)%objArr(2)%ptrfun() .NE. 10) print*, "FAIL 26"
if(calloc(2)%cptr%ptrfun() .NE. 10) print*, "FAIL 27"
if(calloc(2)%calloc%ptrfun() .NE. 10) print*, "FAIL 28"
if(calloc(2)%cptrArr(2)%ptrfun() .NE. 10) print*, "FAIL 29"
if(calloc(2)%callocArray(2)%ptrfun() .NE. 10) print*, "FAIL 30"

print*, "PASS"
end program
