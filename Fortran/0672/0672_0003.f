      IMPLICIT COMPLEX*8(A,B,C,Z)
      DIMENSION Z(10)
      CALL INIT(A,B,C,Z)
      DO 10 I=1,10
      A=A+Z(I)**2+Z(I)**2
   10 CONTINUE
      DO 20 I=1,10
      A=A+Z(I)**(-2)+Z(I)**(-2)
   20 CONTINUE
      DO 30 I=1,1
      A=A+(B*C)**2+(B*C)**2
      A=A+(B*C)**(-2)+(B*C)**(-2)
   30 CONTINUE
      DO 40 I=1,10
      A=A+Z(I)**2
      IF(I.EQ.2) GO TO 40
      A=A+Z(I)**2
   40 CONTINUE
      CALL OUT(A,B,C,Z)
      STOP
      END

      SUBROUTINE INIT(A,B,C,Z)
      IMPLICIT COMPLEX*8(A,B,C,Z)
      DIMENSION Z(10)
      A=(0.,0.)
      B=(1.,1.)
      C=(2.,2.)
      DO 10 I=1,10
      FI=I
      Z(I)=CMPLX(FI,FI)
   10 CONTINUE
      RETURN
      ENTRY OUT(A,B,C,Z)
      WRITE(6,1000) A,B,C,Z
      RETURN
 1000 FORMAT(6E20.7)
      END
