      PROGRAM MAIN
      INTEGER A(5),B(5),C
      DATA A/10,20,30,40,50/
      DATA B/50,40,30,20,10/
      WRITE(6,*)'#### START ####'

      I=3
   10 IF(I.LE.5) THEN
        IF(A(I).EQ.B(I)) THEN
          C=A(I)
          IF(C.EQ.B(I)) THEN
            CALL SUB(C)
            IF(.TRUE.) THEN

            ENDIF
          ENDIF
        ENDIF
        IF(C.NE.A(I)) THEN
          C=0
        ENDIF
        I=I+1
        GO TO 10
      ENDIF

      IF(C.EQ.0) THEN
        WRITE(6,*)'*** OK2 ***'
        GO TO 20
      ENDIF
      WRITE(6,*)'??? NG2 ???'
   20 WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(X)
      INTEGER X
      IF(X.NE.30) THEN
        WRITE(6,*)'??? NG1 ???'
        RETURN
      ENDIF
      WRITE(6,*)'*** OK1 ***'
      END
