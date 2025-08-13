module m1
private 
public :: xyz 
type xyz
   private     
        integer :: a
        logical :: b
        integer :: x
        integer :: y
   contains
   private    
   procedure :: h
   procedure, public :: q 
   procedure, public :: pt
end type xyz
interface xyz
procedure cr 
end interface
contains
 function cr( c, f, x,y) result(r)
  integer,intent(in)::c,x,y
  logical ,intent(in):: f
  type (xyz):: r 
call r% h( c+1,f,x+1,y+1)
 end function
 subroutine h( this , c,f,x,y)
  integer,intent(in)::c,x,y
  logical ,intent(in):: f
  class(xyz):: this
  this%a = c+2
  this%b = f
  this%x = x+2
  this%y = y+2
 end subroutine
 function   q( this , c,f,x,y) result(r)
  integer,intent(in)::c,x,y
  logical ,intent(in):: f
  class(xyz):: this
  logical:: r
  this%a = c+3
  this%b = f
  this%x = x+3
  this%y = y+3
  r=f
 end function
 subroutine pt( this )
  class(xyz):: this
  write(2,*)this%a, this%b , this%x , this%y
 end subroutine
end module

use m1
type(xyz) :: sh
integer n(3)
logical :: x
sh = xyz(5, .true., 100, 200) 
call sh%pt()
rewind 2
read(2,*) n(1),x,n(2:)
if (.not. x) print *,2001
if (any(n/=[8,103,203])) print *,501
print *,'pass'
end
