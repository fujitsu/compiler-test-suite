module def
type ydef
integer yy
end type
end module def


use def
type (ydef) :: x,y
x%yy=0
y%yy=0
call sub(x,y)
call sub(x,y,x)
if ( x%yy==50 .and. y%yy==100 ) then
  print *,'pass'
else
  print *,'ng',x%yy,y%yy
end if
contains

subroutine sub(a,b,c)
use def
type (ydef) :: a,b
type (ydef),optional :: c
if(present(c)) then
c%yy=200
end if
a%yy=50
b%yy=100
end subroutine
end
