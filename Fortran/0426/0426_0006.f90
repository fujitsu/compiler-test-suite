module m1
public :: cr , xyz
type xyz
   private     
        integer :: a
   contains
   private    
   procedure :: n
   procedure,public :: t
end type xyz
contains
 subroutine  cr( r,c)
  integer,intent(in)::c
  type (xyz),intent(out):: r 
if ( r% n( c+1) /=1) print *,301
if (r%a/=8) print *,101
 end subroutine
 function   n( this , c)
  integer,intent(in)::c
  class(xyz):: this
  this%a = c+2
  n=1
 end function
 subroutine t( this )
  class(xyz):: this
  if (this%a/=8 ) print *,201
 end subroutine
end module

use m1
type(xyz):: r
call cr(r,5) 
call r%t 
print *,'pass'
end
