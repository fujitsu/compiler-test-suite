      PARAMETER(N=100)
      REAL*8 X(N,N),Y(N,N),Z(N,N)
      X=0.0
      Y=0.0
      Z=0.0
!$omp parallel do
      DO J=1,N
        DO I=1,N
          Z(I,J) = 0.0D0
          DO K=1,N
            Z(I,J) = Z(I,J) - X(I,K)*Y(K,J)
          ENDDO
        ENDDO
      ENDDO
      write(6,9) Z(1,1)
 9    format(f10.5)
      END
