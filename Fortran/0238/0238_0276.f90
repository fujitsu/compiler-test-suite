module m1
implicit none
type ty
    integer :: i = 10
    procedure(fun), pointer :: ptrfun => NULL()    
end type
type ty2
    integer,allocatable:: a1(:)
    type(ty), allocatable :: b1(:)
end type
contains
    integer FUNCTION fun(this)
    class(ty) :: this
    fun = this%i
    end FUNCTION
end module

use m1
implicit none
type (ty2), target  :: obj(2)
type(ty2), pointer :: cptr(:)
type(ty2), pointer :: calloc(:)

allocate(obj(2)%a1(2))
obj(2)%a1=[1,2]
allocate(obj(2)%b1(2))

allocate(obj(1)%a1(3))
obj(1)%a1=[11,12,13]
allocate(obj(1)%b1(3))

cptr => obj
allocate(calloc, SOURCE = cptr)
deallocate(calloc(2)%a1)
allocate(calloc(2)%a1, SOURCE=obj(2)%a1)

deallocate(calloc(2)%b1 )
allocate(calloc(2)%b1 , SOURCE = obj(2)%b1)


if(any(ubound(obj(2)%a1)/= 2))  print*, 200
if(obj(2)%a1(1)/= 1)  print*, 201
if(obj(2)%a1(2)/= 2)  print*, 202
if(obj(2)%b1(1)%i /= 10) print*, 301
if(obj(2)%b1(2)%i /= 10) print*, 302
if(any(ubound(obj(1)%a1)/= 3))  print*, 400
if(obj(1)%a1(1)/= 11)  print*, 401
if(obj(1)%a1(2)/= 12)  print*, 402
if(obj(1)%a1(3)/= 13)  print*, 403
if(obj(1)%b1(1)%i /= 10) print*, 501
if(obj(1)%b1(2)%i /= 10) print*, 502

if(any(ubound(calloc(2)%a1)/= 2))  print*, 200
if(calloc(2)%a1(1)/= 1)  print*, 201
if(calloc(2)%a1(2)/= 2)  print*, 202
if(calloc(2)%b1(1)%i /= 10) print*, 301
if(calloc(2)%b1(2)%i /= 10) print*, 302
if(any(ubound(calloc(1)%a1)/= 3))  print*, 400
if(calloc(1)%a1(1)/= 11)  print*, 401
if(calloc(1)%a1(2)/= 12)  print*, 402
if(calloc(1)%a1(3)/= 13)  print*, 403
if(calloc(1)%b1(1)%i /= 10) print*, 501
if(calloc(1)%b1(2)%i /= 10) print*, 502
print *,'pass'

end program
