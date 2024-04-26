MODULE mod1
IMPLICIT NONE

INTEGER :: r1(5,5,8) = 3
TYPE t1
  INTEGER :: rr(5,5,8) = 0
END TYPE

INTEGER::sh(3)=0,sz=0,so=0

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,PARAMETER :: n = 5
TYPE(t1),POINTER :: ptr
TYPE(t1),ALLOCATABLE :: allc
ALLOCATE(ptr,allc)
ptr%rr = 2
allc%rr = 3

CALL sub(ptr,allc)

CONTAINS

SUBROUTINE sub(dyp,dya)
USE mod1
IMPLICIT NONE
TYPE(t1),POINTER :: dyp
TYPE(t1),ALLOCATABLE :: dya
ASSOCIATE(aa => (dyp%rr*dya%rr)+(n*r1))
  CALL sub_2(aa)
END ASSOCIATE
END SUBROUTINE

SUBROUTINE sub_2(ddy)
IMPLICIT NONE
CLASS(*) :: ddy(3,4,*)
INTEGER :: temp(2)

associate(aa=>ddy(:,:,2))
if(sizeof(aa)/=48) print*,100
if(size(aa)/=12) print*,101,size(aa)
temp=shape(aa)
if(temp(1)/=3 .or. temp(2)/=4) print*,'102'

select type(azz=>ddy(:,:,1))
type is(integer)
IF(all(azz .EQ. 21)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,102
END IF
end select
end associate
END SUBROUTINE

END PROGRAM
