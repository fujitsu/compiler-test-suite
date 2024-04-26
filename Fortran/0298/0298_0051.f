      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
      REAL*8 Z(10,10,10),U(10,10,10),VAN(10,10,10)
      DATA Z/1000*2/,U/1000*3/,REI/5/,RE/6/
      NZ=11
      NY=11
      NX=11
      DO K=2,NZ-1
      DO J=2,NY-1
      DO I=2,NX-1
      DZI=1./(U(I,J,2)-Z(I,J,1))
      DUDZ=DABS(U(I,J,2))*DZI
      USTA=DSQRT(REI*DUDZ)
      RET=RE*USTA
      ZP=(Z(I,J,K)-Z(I,J,1))*RET
      VAN(I,J,K)=1.-DEXP(-ZP/25.)
      END DO
      END DO
      END DO
      WRITE(6,*) VAN(10,10,10)
      END

