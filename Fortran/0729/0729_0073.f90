PROGRAM TEST

IMPLICIT NONE
INTEGER, DIMENSION(1) :: I1=1, A
INTEGER, DIMENSION(2) :: I2=2, B
INTEGER :: I=-1, C

A = EL_FUNC(I1)
B = EL_FUNC(I2)
C = EL_FUNC(I)
WRITE(1,*) 'ELEMENTAL: ', A, B, C
A = OT_FUNC(I1)
B = OT_FUNC(I2)
WRITE(1,*) 'OTHERWISE: ', A, B
print *,'pass'

CONTAINS

ELEMENTAL FUNCTION EL_FUNC(J)
INTEGER, INTENT(IN) :: J
INTEGER :: EL_FUNC
EL_FUNC = J
END FUNCTION EL_FUNC

FUNCTION OT_FUNC(J)
INTEGER,INTENT(IN) :: J(:)
INTEGER, DIMENSION(SIZE(J)) :: OT_FUNC
WRITE(1,*) 'WITHIN OT_FUNC: ', J
OT_FUNC = J
END FUNCTION OT_FUNC

END PROGRAM TEST
