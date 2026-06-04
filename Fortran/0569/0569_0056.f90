MODULE mod3

TYPE point
  integer :: x, y
END TYPE point

interface operator(+)
pure function sub (px,ax) result (c)
  import point
  type(point) ,intent(in),value:: px
  type(point) ,intent(in),value :: ax
  type(point) :: c
  END function sub

  end interface

END MODULE mod3

program main
use mod3
type(point) ::a,b,c
a%x=5
b%x=6
a%y=10
b%y=10
c=a+b

if(c%x /= 11 )print*,101
if(c%y /= 20 )print*,102
print*,"PASS"
end

pure function sub (px,ax) result (c)
  use mod3
  type(point), intent(in),value:: px
  type(point), intent(in),value:: ax
  type(point) :: c
  c%x=px%x + ax%x
  c%y=px%y + ax%y
  END function sub




