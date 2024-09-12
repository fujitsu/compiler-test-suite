module m1
 TYPE POINT
 REAL :: X, Y
 CONTAINS
 PROCEDURE,NOPASS :: A2 => add_2,A3 => add_3 
 END TYPE POINT
contains
function add_2(a,b)
integer ::a,b,add_2
add_2 = a+b
END function 
function add_3 (a,b,c)
integer :: a,b,c,add_3
add_3 = a+b+c
END function
end module 

use m1
type(point) :: obj
if((obj%A2(1,2).EQ.3) .AND. &
   (obj%A3(1,2,3).EQ.6)) then
       print*,"pass"
else
    print*, "fail"
endif
end
