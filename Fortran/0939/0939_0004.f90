
MODULE mod3

TYPE point
  integer :: x
  contains
  procedure ::fun
  generic:: operator(+)=>fun
END TYPE point

contains
 elemental function fun (px,ax) result (c)
  class(point), INTENT(in),asynchronous :: px 
  type(point), INTENT(in) ,asynchronous:: ax
  type(point) :: c
  c%x=px%x + ax%x
  END function fun
END MODULE mod3

program main
use mod3
 type(point) ::a(3),b(3),c(3)
 integer::vv(3)=[1,2,3]
 a = [point(5),point(15),point(25)]
 b = [point(10),point(20),point(30)]
 c=a(vv)+b
 if(c(1)%x /= 15 .and. c(2)%x /= 35 .and. c(3)%x /= 55) print*,"101"
 b = [point(20),point(30),point(40)]
 c=a+b(vv)
 if(c(1)%x /= 25 .and. c(2)%x /= 45 .and. c(3)%x /= 65) print*,"102"
 print*,"PASS"
end
  
