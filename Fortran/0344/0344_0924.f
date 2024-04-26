      REAL*8 A(100,100)/10000*0/
      REAL*8 B(100,100)/10000*0/
      REAL*8 C(100,100)/10000*0/
      COMPLEX*8 D(100,100)/10000*(0.0D+0,0.0D+0)/
      COMPLEX*8 E(100,100)/10000*(0.0D+0,0.0D+0)/
      INTEGER*4 I,J
C
      DO 10 I=1,100
        DO 10 J=1,100
          CALL SUB1(A,B,C,D,E)
          IF(A(I,J).GT.500) GOTO 20
   10 CONTINUE
   20 CONTINUE
C
      DO 30 I=1,5
        DO 30 J=1,5
          WRITE(6,*) A(I,J),' ',B(I,J),' ',C(I,J)
   30 CONTINUE
C
      DO 40 I=1,5
        DO 40 J=1,5
          WRITE(6,*) D(I,J),' ',E(I,J)
   40 CONTINUE
C
      STOP
      END
C
      SUBROUTINE SUB1(A,B,C,D,E)
C
      REAL*8 A(100,100)
      REAL*8 B(100,100)
      REAL*8 C(100,100)
      COMPLEX*8 D(100,100)
      COMPLEX*8 E(100,100)
      INTEGER*4 I,J
C
      DO 100 I=1,100
        DO 100 J=1,100
          A(I,J) = I * J * 0.1
          B(I,J) = I * J * 0.01
          C(I,J) = I * J * 0.001
  100 CONTINUE
C
      DO 110 I=1,100
        DO 110 J=1,100
          D(I,J) = I * A(I,J)
          E(I,J) = J * B(I,J)
  110 CONTINUE
C
      RETURN
      END
