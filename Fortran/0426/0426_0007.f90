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
if ( r% h( c+1) /= 1) print *,1001
 end function
 integer function h( this , c)
  integer,intent(in)::c
  class(xyz):: this
  this%a = c+2
  h=1
 end function
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
