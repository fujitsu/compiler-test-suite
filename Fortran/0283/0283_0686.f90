MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: rr = 0
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: bb = 0
END TYPE

INTEGER::sh(3)=0,sz=0,so=0

interface operator(*)
 module procedure proc
end interface operator(*)

contains
function proc(a,b)
class(t1),intent(in) :: a(:,:,:),b(:,:,:)
class(t1),pointer :: proc(:,:,:)

allocate(proc,source=b)
proc%rr = a%rr
end function
END MODULE

PROGRAM main
USE mod1
TYPE(t1) :: dyp(5,8,5)
TYPE(t2) :: dya(5,8,5)

dya%rr = 5
dyp%rr = 15
dya%bb = 22

ASSOCIATE(aa => (dyp*dya))
 so=sizeof(aa)
 sz=size(aa)
 sh=shape(aa)
 if(so /= 800*2  .or. sz /= 200 .or. sh(1)/=5 .or. sh(2)/=8) print*,'100',so,sz,sh
 if(fun_2(aa) == 1) print*,'pass'
END ASSOCIATE

CONTAINS

INTEGER FUNCTION fun_2(ddy)
IMPLICIT NONE
CLASS(t1) :: ddy(3,*)

associate(aa=>ddy(:,2))
if(24/=sizeof(aa) .or. 3/=size(aa) ) print*,'101'

if(all(3/=shape(aa))) print*,'102',shape(aa)
select type(ddy)
 type is(t2)
  IF(ddy(2,2)%rr .EQ. 15 .and. ddy(2,3)%bb .EQ. 22) THEN
   fun_2 = 1
  ELSE
   fun_2 = 0
  END IF
end select
end associate
END FUNCTION

END PROGRAM
