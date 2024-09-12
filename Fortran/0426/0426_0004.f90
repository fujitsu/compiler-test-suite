module m1
private
public :: cr 
type xyz
   private     
        integer :: a
   contains
   private    
   procedure :: h
end type xyz
contains
 subroutine  cr( c)
  integer,intent(in)::c
  type (xyz):: r 
call r% h( c+1)
if (r%a/=8) print *,101
 end subroutine
 subroutine h( this , c)
  integer,intent(in)::c
  class(xyz):: this
  this%a = c+2
 end subroutine
end module

use m1
call cr(5) 
print *,'pass'
end
