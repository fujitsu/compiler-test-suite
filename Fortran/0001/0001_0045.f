      INTEGER A(1000),B(500),CODE
      DATA A/1000*0/,B/500*0/
C
      CODE = 0
      DO 10 I=1,1000
         A = A + 1
         IF(I.GT.10) GO TO 20
            B = B + 1
   10 CONTINUE
   20 CONTINUE
C
      DO 30 I=1,1000
         IF(A(I).NE.11) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 40
         ENDIF
   30 CONTINUE
C
   40 CONTINUE
      DO 50 I=1,500
         IF(B(I).NE.10) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = B(',I,')'
            CODE = 1
            GO TO 60
         ENDIF
   50 CONTINUE
C
      IF(CODE.EQ.0) WRITE(6,*) 'OK'
C
   60 CONTINUE
      STOP
      END
