      INTEGER A(1000)
      DATA A/1000*0/
C
      N = 500
      DO 10 I=1,4
         A(1:N) = A(1:N) + 1
   10 CONTINUE
C
      DO 20 I=1,500
         IF(A(I).NE.4) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            CODE = 1
            GO TO 30
         ENDIF
         IF(A(I+500).NE.0) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I+500,')'
            CODE = 1
            GO TO 30
         ENDIF
   20 CONTINUE
C
      WRITE(6,*) 'OK'
C
   30 CONTINUE
      STOP
      END
