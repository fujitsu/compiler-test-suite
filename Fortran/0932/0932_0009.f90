module m1
type ty
integer :: val =0 
end type ty
procedure(type(ty)),pointer, protected :: p
type(ty) :: x
contains
subroutine sub
p=>fun
end subroutine
type(ty) function fun(val)
type(ty), intent(in):: val
fun=val
end function
end module

use m1
type(ty) :: obj
obj=ty(4)
call sub
x= p(obj)
 if(x%val/=4) print *, 101
  print *,"Pass"
end

