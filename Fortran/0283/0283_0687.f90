MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: rr = 0
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER :: bb = 0
END TYPE

INTEGER::sh(2)=0,sz=0,so=0

interface operator(*)
 module procedure proc
end interface operator(*)

contains
function proc(a,b)
class(t1),intent(in) :: a(:,:),b(:,:)
class(t1),pointer :: proc(:,:)

allocate(proc,source=b)
proc%rr = a%rr
end function
END MODULE

PROGRAM main
USE mod1
TYPE(t1) :: dyp(5,8)
TYPE(t2) :: dya(5,8)

dya%rr = 5
dyp%rr = 15
dya%bb = 22

ASSOCIATE(aa => (dyp*dya))
 so=sizeof(aa)
 sz=size(aa)
 sh=shape(aa)
 if(so /= 320  .or. sz /= 40 .or. sh(1)/=5 .or. sh(2)/=8) print*,'100'
 if(fun_2(aa,so,sz,sh) == 1) print*,'pass'
END ASSOCIATE

CONTAINS

INTEGER FUNCTION fun_2(ddy,dso,dsz,dsh)
IMPLICIT NONE
CLASS(t1) :: ddy(5,8)
INTEGER::dso,dsh(:),dsz,temp(2)

associate(aa=>ddy)
if(dso/=sizeof(aa) .or. dsz/=size(aa) ) print*,'101'
temp=shape(aa)
if(temp(1)/=dsh(1) .or. temp(2)/=dsh(2)) print*,'102'
select type(ddy)
 type is(t2)
  IF(all(ddy%rr .EQ. 15) .and. all(ddy%bb .EQ. 22)) THEN
   fun_2 = 1
  ELSE
   fun_2 = 0
  END IF
end select
end associate
END FUNCTION

END PROGRAM
