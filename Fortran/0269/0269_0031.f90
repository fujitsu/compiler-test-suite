IMPLICIT NONE
TYPE TY
 INTEGER::SS(3)
END TYPE
 TYPE(TY)::OBJ(2)

DATA (OBJ(KK),INTEGER(5-1)::KK=1,2) /TY([(II+1,INTEGER::II=1,3)]),TY([(II+2,INTEGER::II=1,3)])/
IF(ANY(OBJ(1)%SS/= [(II+1,INTEGER::II=1,3)]))PRINT*,101
IF(ANY(OBJ(2)%SS/= [(II+2,INTEGER::II=1,3)]))PRINT*,102
PRINT*,"PASS"
END
