      PROGRAM MAIN
      IMPLICIT REAL*8(A-H,O-Z)
      COMMON /COM/ NN
      DIMENSION AA(20)
      NN=1
      DO 10 I=1,20,NN
        AA(I)=I
        CALL SUB
 10   CONTINUE
      WRITE(6,*) AA
      STOP
      END
      SUBROUTINE SUB
      IMPLICIT REAL*8(A-H,O-Z)
      RETURN
      END
