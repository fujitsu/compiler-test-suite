      REAL*4  A(1000)
      DATA A/1000*0.0/
C
      A = A + 1.0
C
      DO 10 I=1,1000
         IF(A(I).NE.1.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            GO TO 20
         ENDIF
   10 CONTINUE
C
      WRITE(6,*) 'OK'
C
   20 CONTINUE
      STOP
      END
