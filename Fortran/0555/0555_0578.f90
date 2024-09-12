module m1
implicit none
type ty
    integer :: i = 10
    procedure(fun), pointer :: ptrfun => NULL()    
contains
    procedure :: fun
    generic :: gen => fun
    
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
if (allocated(alloc%cArrAlloc))then
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

if (allocated(calloc%arrAlloc))then
  deallocate(calloc%arrAlloc)
endif
allocate(calloc%arrAlloc, source = obj%arr)

if( (obj%obj%ptrfun() .NE. obj%obj%gen()) .OR. &
    (obj%obj%ptrfun() .NE. obj%obj%fun()))  print*, "FAIL 1"

if((obj%arr(2)%ptrfun() .NE. obj%arr(2)%gen()) .OR. &
   (obj%arr(2)%ptrfun() .NE. obj%arr(2)%fun())) print*, "FAIL2"

if((obj%arrAlloc(2)%ptrfun() .NE. obj%arrAlloc(2)%gen()) .OR. &
   (obj%arrAlloc(2)%ptrfun() .NE. obj%arrAlloc(2)%fun())) print*, "FAIL3"

if((obj%CPTR%ptrfun() .NE. obj%CPTR%gen()) .OR. &
   (obj%CPTR%ptrfun() .NE. obj%CPTR%fun()))print*, "FAIL4"

if((obj%cArrPtr(2)%ptrfun() .NE. obj%cArrPtr(2)%gen()) .OR. &
    (obj%cArrPtr(2)%ptrfun() .NE. obj%cArrPtr(2)%fun()) ) print*, "FAIL5"

if((obj%cArrAlloc(2)%ptrfun() .NE. obj%cArrAlloc(2)%gen()) .OR. &
    (obj%cArrAlloc(2)%ptrfun() .NE. obj%cArrAlloc(2)%fun())) print*, "FAIL6"

if((ptr%obj%ptrfun() .NE. ptr%obj%gen()) .OR. &
   (ptr%obj%ptrfun() .NE. ptr%obj%fun()))  print*, "FAIL7"

if((ptr%arr(2)%ptrfun() .NE. ptr%arr(2)%gen()) .OR. &
   (ptr%arr(2)%ptrfun() .NE. ptr%arr(2)%fun())) print*, "FAIL8"

if((ptr%arrAlloc(2)%ptrfun() .NE. ptr%arrAlloc(2)%gen()) .OR. &
   (ptr%arrAlloc(2)%ptrfun() .NE. ptr%arrAlloc(2)%fun())) print*, "FAIL9"

if( (ptr%CPTR%ptrfun() .NE. ptr%CPTR%gen()).OR. & 
    (ptr%CPTR%ptrfun() .NE. ptr%CPTR%fun()) ) print*, "FAIL 10"

if((ptr%cArrPtr(2)%ptrfun() .NE. ptr%cArrPtr(2)%gen()) .OR. & 
   (ptr%cArrPtr(2)%ptrfun() .NE. ptr%cArrPtr(2)%fun())) print*, "FAIL11"

if((ptr%cArrAlloc(2)%ptrfun() .NE. ptr%cArrAlloc(2)%gen()) .OR. &
   (ptr%cArrAlloc(2)%ptrfun() .NE. ptr%cArrAlloc(2)%fun())) print*, "FAIL12"

if((alloc%obj%ptrfun() .NE. alloc%obj%fun()) .OR. &
   (alloc%obj%ptrfun() .NE. alloc%obj%gen()))   print*, "FAIL13"

if((alloc%arr(2)%ptrfun() .NE. alloc%arr(2)%gen()) .OR. &
   (alloc%arr(2)%ptrfun() .NE. alloc%arr(2)%fun())) print*, "FAIL14"

if((alloc%arrAlloc(2)%ptrfun() .NE. alloc%arrAlloc(2)%gen()) .OR. &
   (alloc%arrAlloc(2)%ptrfun() .NE. alloc%arrAlloc(2)%fun())) print*, "FAIL15"

if((alloc%CPTR%ptrfun() .NE.alloc%CPTR%gen()) .OR. &
   (alloc%CPTR%ptrfun() .NE.alloc%CPTR%fun())) print*, "FAIL16"

if((alloc%cArrPtr(2)%ptrfun() .NE. alloc%cArrPtr(2)%gen()) .OR. &
   (alloc%cArrPtr(2)%ptrfun() .NE. alloc%cArrPtr(2)%fun())) print*, "FAIL17"

if((alloc%cArrAlloc(2)%ptrfun() .NE. alloc%cArrAlloc(2)%gen()) .OR. &
   (alloc%cArrAlloc(2)%ptrfun() .NE. alloc%cArrAlloc(2)%gen()) ) print*, "FAIL18"

if((cptr%obj%ptrfun() .NE. cptr%obj%gen()) .OR. &
   (cptr%obj%ptrfun() .NE. cptr%obj%fun()) ) print*, "FAIL 19"

if((cptr%arr(2)%ptrfun() .NE.cptr%arr(2)%gen()) .OR. & 
   (cptr%arr(2)%ptrfun() .NE.cptr%arr(2)%fun()) ) print*, "FAIL20"

if((cptr%arrAlloc(2)%ptrfun() .NE. cptr%arrAlloc(2)%fun()) .OR. & 
   (cptr%arrAlloc(2)%ptrfun() .NE. cptr%arrAlloc(2)%gen())) print*, "FAIL21"

if((cptr%CPTR%ptrfun() .NE.cptr%CPTR%gen()) .OR. & 
   (cptr%CPTR%ptrfun() .NE.cptr%CPTR%gen()) ) print*, "FAIL22"

if((cptr%cArrPtr(2)%ptrfun() .NE. cptr%cArrPtr(2)%gen()) .OR. & 
   (cptr%cArrPtr(2)%ptrfun() .NE. cptr%cArrPtr(2)%fun()) ) print*, "FAIL23"

if((cptr%cArrAlloc(2)%ptrfun() .NE. cptr%cArrAlloc(2)%gen()) .OR. &
   (cptr%cArrAlloc(2)%ptrfun() .NE. cptr%cArrAlloc(2)%fun())) print*, "FAIL24"

if( (calloc%obj%ptrfun() .NE. calloc%obj%fun()) .OR. & 
    (calloc%obj%ptrfun() .NE. calloc%obj%gen()) ) print*, "FAIL25"

if( (calloc%arr(2)%ptrfun() .NE. calloc%arr(2)%fun()) .OR. &
    (calloc%arr(2)%ptrfun() .NE. calloc%arr(2)%gen()) ) print*, "FAIL26"

if((calloc%arrAlloc(2)%ptrfun() .NE. calloc%arrAlloc(2)%fun()) .OR. &
   (calloc%arrAlloc(2)%ptrfun() .NE. calloc%arrAlloc(2)%gen())) print*, "FAIL27"

if((calloc%CPTR%ptrfun() .NE. calloc%CPTR%fun())  .OR.  &
   (calloc%CPTR%ptrfun() .NE. calloc%CPTR%gen()))  print*, "FAIL28"

if(( calloc%cArrPtr(2)%ptrfun() .NE. calloc%cArrPtr(2)%fun()) .OR. &
   ( calloc%cArrPtr(2)%ptrfun() .NE. calloc%cArrPtr(2)%gen())) print*, "FAIL29"

if( (calloc%cArrAlloc(2)%ptrfun() .NE. calloc%cArrAlloc(2)%fun()) .OR. &
    (calloc%cArrAlloc(2)%ptrfun() .NE. calloc%cArrAlloc(2)%gen()) ) print*, "FAIL30"

print*, "PASS"
end program
