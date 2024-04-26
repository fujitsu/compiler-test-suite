MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: rr = 0
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: bb = 0
END TYPE

INTEGER::so=0

interface operator(*)
 module procedure proc
end interface operator(*)

contains
function proc(a,b)
class(t1),intent(in) :: a(:,:),b(:,:)
class(t1),pointer :: proc

allocate(proc,source=b(1,2))
proc%rr = a(1,2)%rr
end function
END MODULE

PROGRAM main
USE mod1
TYPE(t1) :: dyp(5,8)
TYPE(t2) :: dya(5,8)

interface
INTEGER FUNCTION fun_2(ddy,dso)
IMPLICIT NONE
CLASS(*) :: ddy
INTEGER::dso
end function
end interface

dya%rr = 5
dyp%rr = 15
dya%bb = 22

ASSOCIATE(aa => (dyp*dya))
 so=sizeof(aa)
 if(so /= 8 ) print*,'100'
 if(fun_2(aa,so) == 1) print*,'pass'
END ASSOCIATE
END PROGRAM

INTEGER FUNCTION fun_2(ddy,dso)
use mod1
CLASS(*) :: ddy
INTEGER::dso

associate(aa=>ddy)
if(dso/=sizeof(aa)) print*,'101'
select type(ddy)
 type is(t2)
  IF(ddy%rr .EQ. 15 .and. ddy%bb .EQ. 22) THEN
   fun_2 = 1
  ELSE
   fun_2 = 0
  END IF
end select
end associate
END FUNCTION
