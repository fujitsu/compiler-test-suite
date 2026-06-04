
MODULE m3

TYPE point
  integer :: x, y
END TYPE point

interface operator(+)
 function sub (px,ax) result (c)
  import point
  type(point), INTENT(in) :: px 
  integer, INTENT(in) :: ax
  type(point) :: c
  END function sub
  end interface

END MODULE m3

program main
use m3
interface
integer function s1() bind(c,name='ss2')
implicit none
end function
end interface
 type(point) ::a,c1
 a%x=5
 c1=a+s1()

 if(c1%x /= 25 )print*,"101"

print*,"PASS"

end
  
 function sub (px,ax) result (c)
  use m3
  type(point), INTENT(in) :: px 
  integer, INTENT(in) :: ax
  type(point) :: c
  c=point(0,0)
  c%x=px%x + ax
  END function sub
integer function s1() bind(c,name='ss1')
implicit none
 s1=10
end function
integer function s1() bind(c,name='ss2')
implicit none
 s1=20
end function
