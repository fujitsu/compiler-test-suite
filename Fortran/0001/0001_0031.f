      INTEGER A(100),CODE
      REAL*8  B(50)
      DATA    A/100*0/,B/50*0.0/
C
      CODE = 0
      A = A + 1
      B = B + 1.0
C
      DO 10 I=1,100
         IF(A(I).NE.1) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 20
         ENDIF
   10 CONTINUE
C
   20 CONTINUE
      DO 30 I=1,50
         IF(B(I).NE.1.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   40 CONTINUE
      STOP
      END
