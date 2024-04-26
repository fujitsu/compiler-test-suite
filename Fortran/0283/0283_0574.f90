MODULE mod1
IMPLICIT NONE

CHARACTER(LEN = 10) :: arr1
CHARACTER(LEN = 10) :: arr2

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

arr1 = 'xxaaxxaaxx'
arr2 = 'sssss'

ASSOCIATE(aa => arr1)
  ASSOCIATE(bb => aa(6:10))
    ASSOCIATE(cc => TRIM (arr1) // TRIM(bb))
      IF(cc(6:10) .EQ. 'xaaxx') THEN
        PRINT*,'pass'
      ELSE
        PRINT*,101
      END IF
   END ASSOCIATE
  END ASSOCIATE
END ASSOCIATE

END PROGRAM 
