PROGRAM main
IMPLICIT NONE

INTEGER :: res = 0
REAL :: st_mt,dff
st_mt(dff) = dff + 2.0

REAL,TARGET :: tgt = 5.0
REAL,POINTER :: ptr
ptr => tgt

ASSOCIATE(aa => ptr , bb => st_mt(1.0))
  CALL sub(aa,bb)
  ASSOCIATE(aa => AIMAG((13.90,21.89) + (11.23,13.90)) , bb => st_mt(3.0) * REAL(aa) , cc => aa + bb)
    SELECT CASE(INT(cc))
    CASE(214)
    res = res + 1
    END SELECT
  END ASSOCIATE
END ASSOCIATE

IF(res .EQ. 2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(dd1,dd2)
IMPLICIT NONE
REAL :: dd1,dd2
IF(dd1 .GT. dd2) res = 1
END SUBROUTINE

END PROGRAM
