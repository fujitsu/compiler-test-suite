MODULE mod1
IMPLICIT NONE

INTEGER :: r1(5,9,11,15) = 3
TYPE t1
  INTEGER :: rr(5,9,11,15) = 0
END TYPE

INTEGER::sh(4)=0,sz=0,so=0

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
so=sizeof(aa)
sz=size(aa)
sh=shape(aa)
if(so/= 7425*4 .or. sz/=7425 .or. sh(1) /= 5 .or. sh(2)/=9 .or. sh(3)/=11 .or. sh(4) /= 15) print*,'100'
  CALL sub_2(aa,so,sz,sh)
END ASSOCIATE
END SUBROUTINE

SUBROUTINE sub_2(ddy,dso,dsz,dsh)
IMPLICIT NONE
integer::dsh(4)
INTEGER :: ddy(dsh(1),dsh(2),dsh(3),dsh(4)),dso,dsz
associate(aa=>ddy)
if(dso/=sizeof(aa) .or. dsz/=size(aa) .or. all(shape(aa)/=dsh)) print*,'FAIL'
IF(all(ddy .EQ. 21)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
END SUBROUTINE

END PROGRAM
