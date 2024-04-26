module mod1
type tt
 integer ::arcom(2,3)=1
end type
end module

PROGRAM main
use mod1

type(tt) :: yy(3)

interface operator(+)
function pls(a,b)
 import tt
 type(tt),intent(in) :: a(:),b
 type(tt) :: pls(3)
end function
end interface

type(tt)::obj(3)

ASSOCIATE(bb => obj(1:3)+tt(reshape([2,2,2,2,2,2],[2,3])))
  yy = bb  
  yy(2)%arcom = bb(2)%arcom + 2
  if(all(yy(2)%arcom == 5)) then
   yy(2)%arcom = 3
  else
   yy(2)%arcom = 9
  end if
END ASSOCIATE

IF(all(yy(2)%arcom .EQ. 3)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM

function pls(a,b)
use mod1
 type(tt),intent(in) :: a(:),b
 type(tt) :: pls(3)
 do i=1,3
  pls(i)%arcom = a(i)%arcom+b%arcom
 end do
end function
