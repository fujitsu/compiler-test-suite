      IMPLICIT REAL*8 (A-H,O-Z)
      REAL*8 TM(999,999)/998001*3/
      real(kind=8), dimension(999) ::C=(/(i,i=1,999)/)
      real(kind=8), dimension(999) ::D=(/(i,i=2,1000)/)
      N=665
      DO I=1,2
      CALL SIM(TM,N,C,D)
      ENDDO
      WRITE(*,*) "C(10)=",C(10)
      WRITE(*,*) "D(10)=",D(10)
      STOP
      END

      SUBROUTINE SIM(TM,N,C,D)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION TM(999,999)
      DIMENSION C(999),D(999)
      real(kind=8), dimension(999) ::G=(/(i,i=3,1001)/)

      DO 140 I=1,N
      DO 140 K=1,N
      C(I)=C(I)+TM(I,K)*G(K)
      D(I)=D(I)+TM(I,K)*G(K)
  140 CONTINUE

      RETURN
      END
