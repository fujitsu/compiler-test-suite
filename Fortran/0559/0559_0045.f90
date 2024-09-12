MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  CHARACTER(LEN=k2+4)::ch(k1:k2)
END TYPE
CHARACTER(LEN=9)::xx(-2:5)
INTEGER::i
TYPE(ty(-2,5))::ty_obj

END MODULE
PROGRAM main
USE mod1
xx='HELLO PDT'
CALL SUB(ty_obj)
CONTAINS
  SUBROUTINE SUB(dmy)
    TYPE(ty(-2,5))::dmy
    INTEGER::i=0
    dmy =ty(-2,5)((/(xx(i),i=-2,5)/))
    IF(ANY(dmy%ch /= 'HELLO PDT')) PRINT*,'101',dmy%ch
    IF(LEN(dmy%ch) /= 9)  PRINT*,'102',LEN(dmy%ch)
    IF(LBOUND(dmy%ch,1) /= -2) PRINT*,'107',LBOUND(dmy%ch,1)
    IF(UBOUND(dmy%ch,1) /= 5) PRINT*,'108',LBOUND(dmy%ch,1)
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
