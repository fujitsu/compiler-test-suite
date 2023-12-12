      INTEGER A(1000),B(1000)
      DATA A/1000*1/,B/1000*1/
C
      CALL SUB1(A+B)
C
      STOP
      END
C
C
      SUBROUTINE SUB1(A)
      INTEGER A(1000)
C
      DO 10 I=1,1000
         IF(A(I).NE.2) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            GO TO 20
         ENDIF
   10 CONTINUE
C
      WRITE(6,*) 'OK'
C
   20 CONTINUE
      RETURN
      END
