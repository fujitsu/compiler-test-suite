IMPLICIT NONE
INTEGER::ARR(10),BRR(10)
BRR=[ 2, 3, 3, 4, 4, 5, 5, 6, 6, 7]
ARR=  [((INTEGER+JJ,INTEGER(4)::INTEGER=1,2),INTEGER::JJ=1,5)]
IF(ANY(ARR /= BRR))PRINT*,101
PRINT*,"PASS"
END
