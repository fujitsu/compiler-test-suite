module m1
private 
public :: xyz 
type xyz
   private     
        integer :: a
   contains
   private    
   procedure :: h
   procedure,public :: t
end type xyz
interface xyz
 procedure cr 
end interface
contains
 function cr( c) result(r)
  integer,intent(in)::c
  type (xyz):: r 
call r% h( c+1)
 end function
 subroutine h( this , c)
  integer,intent(in)::c
  class(xyz):: this
  this%a = c+2
 end subroutine
 subroutine t( this )
  class(xyz):: this
  if (this%a/=8) print *,101,this%a
 end subroutine
end module

use m1
type(xyz) :: sh
sh = xyz(5) 
call sh%t()
print *,'pass'
end
