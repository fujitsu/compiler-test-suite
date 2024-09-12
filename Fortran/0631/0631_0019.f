      PARAMETER (N1=100)
      COMMON /SSU/A,B
      COMPLEX*16 A(N1),B(N1)

      DO 10 I=1,N1
        A(I)=MOD(I,3) + MOD(I+1,3)*DCMPLX(0,1)
        B(I)=MOD(I+1,3) + MOD(I+2,3)*DCMPLX(0,1)
   10 CONTINUE

      CALL SUB1
      CALL CHECK
      CALL SUB2
      CALL CHECK
      END

      SUBROUTINE CHECK
      PARAMETER (N1=100)
      COMMON /SSU/A,B
      COMPLEX*16 A(N1),B(N1)
      COMPLEX*16 AA,BB
      AA = (0.0,0.0)
      BB = (0.0,0.0)

      DO 10 I=1,N1
            AA = AA + A(I)
            BB = BB + B(I)
   10 CONTINUE
      PRINT*,'  '
      PRINT*,' AA= ',AA
      PRINT*,' BB= ',BB
      END

      SUBROUTINE SUB1
      PARAMETER (N1=100)
      COMMON /SSU/A,B
      COMPLEX*16 A(N1),B(N1)
      DO 10 K=1,5
        DO 20 J=1,N1-1
          DO 30 I=2,J,K
            B(I) = MOD( DBLE(A(I-1)+A(I)+A(I+1)), 3)
     &           + MOD( IMAG(A(I-1)+A(I)+A(I+1)), 3) * DCMPLX(0,1)
   30     CONTINUE
          DO 40 I = 1,N1
            A(I) = B(I)
   40     CONTINUE
   20   CONTINUE
   10 CONTINUE
      END

      SUBROUTINE SUB2
      PARAMETER (N1=100)
      COMMON /SSU/A,B
      COMPLEX*16 A(N1),B(N1)
      DO 10 K=-1,-5,-1
        DO 20 J=2,N1-1
          DO 30 I=J,2,K
            B(I) = MOD( DBLE(A(I-1)+A(I)+A(I+1)), 3)
     &           + MOD( IMAG(A(I-1)+A(I)+A(I+1)), 3) * DCMPLX(0,1)
   30     CONTINUE
          DO 40 I = N1,1,-1
            A(I) = B(I)
   40     CONTINUE
   20   CONTINUE
   10 CONTINUE
      END
