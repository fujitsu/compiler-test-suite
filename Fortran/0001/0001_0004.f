      INTEGER A(1000)
      DATA A/1000*0/
C
      DO 10 I=1,5
         A(I) = A(I) + 1
         DO 20 J=1,10
            A(I) = A(I) + 1
            DO 30 K=1,10
               A = A + 1
   30       CONTINUE
            DO 40 K=1,10
               A = A + 1
   40       CONTINUE
            A(I) = A(I) - 1
   20    CONTINUE
         A(I) = A(I) - 1
   10 CONTINUE
C
      DO 50 I=1,1000
         IF(A(I).NE.1000) THEN
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ELEMENT NUMBER = A(',I,')'
            GO TO 60
         ENDIF
   50 CONTINUE
C
      WRITE(6,*) 'OK'
C
   60 CONTINUE
      STOP
      END
