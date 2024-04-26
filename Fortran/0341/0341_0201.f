      IMPLICIT   REAL*8(A-H,P-Z),REAL*4(O)
      PARAMETER  (L=50,M=50,N=50,MM=30,LT=50)
      DIMENSION  A(L,M,N),Z(L,M,N)
      COMMON     T(LT,LT,LT)
C
      DATA NN/MM/
C
      DO 10 K=1,N
       DO 10 J=1,M
        DO 10 I=1,L
         Z(I,J,K)=I
	 A(I,J,K) = 0
	 T(I,J,K) = 0
   10 CONTINUE
C
      CALL SUB1(A,Z,L,M,N,NN)
      STOP
      END
C
      SUBROUTINE SUB1(A,Z,L,M,N,NN)
      IMPLICIT   REAL*8(A-H,P-Z),REAL*4(O)
      PARAMETER  (LT=50)
      DIMENSION  A(L,M,N),Z(L,M,N)
      COMMON     T(LT,LT,LT)
C
      DO 30 K=1,NN
       DO 20 J=1,NN
        I=1
        DO 10 WHILE(I.LE.NN)
         T(I,J,K)=Z(I,J,K)**2
         T(I,J,K)=(T(I,J,K)+Z(I,J,K))*2
         T(I,J,K)=DSQRT(DABS(T(I,J,K)-Z(I,J,K)))
         A(I,J,K)=Z(I,J,K)+T(I,J,K)
         I=I+1
  10    CONTINUE
  20   CONTINUE
  30  CONTINUE
      WRITE(6,1000) (((A(I,J,K),I=1,5),J=1,5),K=1,5)
C
 1000 FORMAT(3G20.5)
      RETURN
      END
