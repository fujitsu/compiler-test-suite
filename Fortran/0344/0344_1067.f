      REAL*4  R4A1(10),R4B1(10)
      COMMON /BLK/I,R4A1,R4B1
C
      DO 10 I=1,10
         R4A1(I) = FLOAT(I)
         R4B1(I) = R4A1(I) + FLOAT(I)
         CALL SUB1(I,R4A1,R4B1)
   10 CONTINUE
      WRITE(6,*) 'R4B1 = ',R4B1
C
      STOP
      END
C
      SUBROUTINE SUB1(I,R4A1,R4B1)
      REAL*4  R4A1(10),R4B1(10)
C
      R4A1(I) = R4A1(I) + R4B1(I)
C
      RETURN
      END
