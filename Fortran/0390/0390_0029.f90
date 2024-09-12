module mod
 
type ty
integer :: ii
logical :: jj
     contains
     procedure :: prc1
     procedure :: prc2
        generic :: assignment(=) => prc1
        generic :: assignment(=) => prc2
   end type
contains
   subroutine fun1(A,B)
     class(ty),intent(out) :: A
     logical,intent(in) :: B
A%jj = B
   end subroutine
 
   subroutine fun2(A,B)
     class(ty),intent(out) :: A
     integer,intent(in) :: B
A%ii = B
print*,A%ii
   end subroutine
 
   subroutine prc1(A,B)
     class(ty),intent(out) :: A
     integer,intent(in) :: B
A%ii = B
if(    A%ii/=6) print *,1
   end subroutine
 
   subroutine prc2(A,B)
     class(ty),intent(out) :: A
     logical,intent(in) :: B
A%jj = B
   end subroutine
end module
 
use mod
class(ty),pointer :: ptr
integer :: i = 6
allocate(ptr)
ptr = i
print *,'pass'
end
