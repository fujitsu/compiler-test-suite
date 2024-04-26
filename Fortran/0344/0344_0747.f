      REAL A(10)/10*1./,B(10)/10*0./
      REAL C(10)/10*1./,D(10)/10*0./
      INTEGER*2 I2(10)/10*0./
C
      J=0
      DO 10 I=1,10
       IF(I.GE.5) THEN
        J=J+1
        CALL SUB(A(I),B(J))
       ENDIF
   10 CONTINUE
C
      J=0
      DO 20 I=1,10
       IF(I.GE.5) THEN
        J=J+1
        D(I)=C(J)
        WRITE(6,1001) J
       ENDIF
   20 CONTINUE
C
      J=0
      DO 30 I=1,10
       IF(I.GE.5) THEN
        J=J+1
        I2(J)=C(I)
       ENDIF
   30 CONTINUE
C
      WRITE(6,1000) B
      WRITE(6,1000) D
      WRITE(6,1002) I2
 1000 FORMAT(10(1X,F7.2))
 1001 FORMAT(1X,I8)
 1002 FORMAT(10(1X,I7))
      STOP
      END
C
      SUBROUTINE SUB(R1,R2)
      R2=R1
      RETURN
      END
