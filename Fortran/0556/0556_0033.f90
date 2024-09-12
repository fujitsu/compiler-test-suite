module m1
 TYPE POINT
 REAL :: X, Y
 CONTAINS
 PROCEDURE,NOPASS,PUBLIC :: LENGTH => POINT_LENGTH  
 END TYPE POINT
contains
subroutine POINT_LENGTH ()
print*,"PASS"
END subroutine POINT_LENGTH
end module 
use m1
type(POINT) :: obj
call obj%LENGTH
end
