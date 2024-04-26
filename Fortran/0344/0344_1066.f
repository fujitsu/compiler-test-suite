      REAL*4  R4A1(10),R4B1(10)
      COMMON /BLK/I,R4A1,R4B1
C
      CALL SUB1
C
      STOP
      END
C
      SUBROUTINE SUB1
      REAL*4  R4A1(10),R4B1(10)
      COMMON /BLK/I,R4A1,R4B1
C
      DO 10 I=1,10
         R4A1(I)   = FLOAT(I) / 3.
         R4B1(I)   = R4A1(I)  / FLOAT(I)
 10   CONTINUE
      WRITE(6,*) 'R4A1 = ',R4B1
C
      RETURN
      END
