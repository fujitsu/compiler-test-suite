PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(1:6,12:17) :: arr1 = 2
INTEGER,DIMENSION(9:14,-1:4) :: arr2 = 3

ASSOCIATE(aa => arr1(2:6:2,12::2) + arr2(10:14:2,-1::2) + 1)
if(size(aa)/=9) print*,101,size(aa)
if(sizeof(aa)/=36) print*,102

  IF(ALL(aa(1:3:2,1:3:2) .EQ. 6)) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
