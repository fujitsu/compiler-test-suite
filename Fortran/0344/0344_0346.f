      PROGRAM MAIN
      INTEGER A/10/,B/10/
      CALL SUB4(A,B)
      STOP
      END
C
      SUBROUTINE SUB4(A,B)
      INTEGER A,B,Z1(20),Z2(20),Z3(20,20),Z4(20,20)
      DATA Z1,Z2,Z3,Z4/840*1/
      K1=A
      N=B+10
      DO 2 K=1,K1
        Z1(K)=N
        Z2(K)=N
        DO 2 I=1,N
          Z3(I,K)=-1
          Z4(I,K)=0
    2 CONTINUE
      
      WRITE(6,*) Z1,Z2,Z3,Z4
      RETURN
      END
