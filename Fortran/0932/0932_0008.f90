module m1
type ty
integer :: value =0 
end type ty
type(ty) :: x
contains
type(ty) function fun(val)
type(ty), intent(in):: val
fun=val
end function
type(ty) function fun2(val)
type(ty), intent(in):: val
fun2=val
end function
end module

module m2
use m1
procedure(type(ty)),pointer, protected :: p
contains
subroutine sub
p=>fun
end subroutine
subroutine sub1
p=>fun2
end subroutine
end module 

use m2
type tt
integer :: pp
end type tt
type(tt) :: obj,obj1
obj=tt(4)
call sub
x= p(obj)
 if(x%value/=4) print *, 101
 obj1=tt(8)
 x= p(obj1)
 call sub1
 if(x%value/=8) print *, 102
  print *,"Pass"
end

