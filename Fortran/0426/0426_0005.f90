module m1
public :: cr , xyz
type xyz
   private     
        integer :: a
   contains
   private    
   procedure :: h
   procedure,public :: t
end type xyz
contains
 subroutine  cr( r,c)
  integer,intent(in)::c
  type (xyz),intent(out):: r 
call r% h( c+1)
if (r%a/=8) print *,101
 end subroutine
 subroutine h( this , c)
  integer,intent(in)::c
  class(xyz):: this
  this%a = c+2
 end subroutine
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
