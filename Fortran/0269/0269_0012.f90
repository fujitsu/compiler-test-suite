IMPLICIT NONE
INTEGER::ARR(10),BRR(10)
BRR=[1,2,3,4,5,6,7,8,9,10]
ARR=  [(II,INTEGER(1)::II=1,10)]
IF(ANY(ARR /= BRR))PRINT*,101

PRINT*,"PASS"
END
