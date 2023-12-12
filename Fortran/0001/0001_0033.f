      INTEGER,DIMENSION(1000)::A
      DATA A/1000*0/
C
      DO 10 I=1,100
         A = A + 1
   10 CONTINUE
C
      DO 20 I=1,1000
         IF(A(I).NE.100) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            GO TO 30
         ENDIF
   20 CONTINUE
C
      WRITE(6,*) 'OK'
C
   30 CONTINUE
      STOP
      END
