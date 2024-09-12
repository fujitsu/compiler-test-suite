      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)

      DO 10 K=1,N3
        DO 10 J=1,N2
          DO 10 I=1,N1
            A(I,J,K)=(1.23,-3.2)
            B(I,J,K)=(5.13,4.2)
            C(I,J,K)=(3.89,2.34)
   10 CONTINUE

      CALL SUB1
      CALL CHECK
      CALL SUB2
      CALL CHECK
      CALL SUB3
      CALL CHECK
      CALL SUB4
      CALL CHECK

      CALL SUB21
      CALL CHECK
      CALL SUB22
      CALL CHECK
      CALL SUB23
      CALL CHECK
      CALL SUB24
      CALL CHECK

      CALL SUB31
      CALL CHECK
      CALL SUB32
      CALL CHECK
      CALL SUB33
      CALL CHECK
      CALL SUB34
      CALL CHECK
      print *,'PASS'
      END

      SUBROUTINE CHECK
      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)
      COMPLEX*16 AA,BB,CC
      COMPLEX*16 WAA,WBB,WCC
      REAL*8  R
      AA = (0.0,0.0)
      BB = (0.0,0.0)
      CC = (0.0,0.0)
      DO 20 K=1,N3
        DO 20 J=1,N2
          DO 20 I=1,N1
            AA = AA + A(I,J,K)
            BB = BB + B(I,J,K)
            CC = CC + C(I,J,K)
   20 CONTINUE

      READ(5,*) WAA
      READ(5,*) WBB
      READ(5,*) WCC
      R = REAL(WAA)
      if( abs((R-real(AA))/R) .gt. 0.1e-10 ) stop 'NG1'
      R = IMAG(WAA)
      if( abs((R-imag(AA))/R) .gt. 0.1e-10 ) then
	print *,R,imag(AA)
	stop 'NG2'
      endif
      R = REAL(WBB)
      if( abs((R-real(BB))/R) .gt. 0.1e-14 ) stop 'NG3'
      R = IMAG(WBB)
      if( abs((R-imag(BB))/R) .gt. 0.1e-14 ) stop 'NG4'
      R = REAL(WCC)
      if( abs((R-real(CC))/R) .gt. 0.1e-14 ) stop 'NG5'
      R = IMAG(WCC)
      if( abs((R-imag(CC))/R) .gt. 0.1e-14 ) stop 'NG6'
      END

      SUBROUTINE SUB1
      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)
      DO 10 K=2,N3-1
        DO 10 J=2,N2-1
          DO 10 I=2,N1-1
            A(I,J,K) = B(I,J,K) * C(I,J,K)
   10 CONTINUE
      END

      SUBROUTINE SUB2
      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)
      DO 10 K=2,N3-1
        DO 10 J=2,N2-1
          DO 10 I=2,N1-1
            A(I,J,K) = (0.0,0.0)
   10 CONTINUE
      DO 20 K=2,N3-1
        DO 20 J=2,N2-1
          DO 20 I=2,N1-1
            A(I,J,K) = SIN(COS(B(I,J,K)))
     &               + COS(SIN(C(I,J,K)))
   20 CONTINUE
      END

      SUBROUTINE SUB3
      PARAMETER (N1=100,N2=100,N3=10)
      PARAMETER (N23=N2*N3)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N23),B(N1,N23),C(N1,N23)
      DO 10 J=2,N23-1
        DO 10 I=2,N1-1
          A(I,J) = (0.0,0.0)
   10 CONTINUE
      DO 20 J=2,N23-1
        DO 20 I=2,N1-1
          A(I,J) = SIN(COS(B(I,J)))
     &             + COS(SIN(C(I,J)))
   20 CONTINUE
      END

      SUBROUTINE SUB4
      PARAMETER (N1=100,N2=100,N3=10)
      PARAMETER (N123=N1*N2*N3)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N123),B(N123),C(N123)
      DO 10 I=1,N123
        A(I) = (0.0,0.0)
   10 CONTINUE
      DO 20 I=1,N123
        A(I) = B(I) / C(I) * SIN(B(I))
   20 CONTINUE
      END

      SUBROUTINE SUB21
      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)
      DO 10 K=N3-1,2,-1
        DO 10 J=N2-1,2,-1
          DO 10 I=N1-1,2,-1
            A(I,J,K) = B(I,J,K) * C(I,J,K)
   10 CONTINUE
      END

      SUBROUTINE SUB22
      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)
      DO 10 K=N3-1,2,-1
        DO 10 J=N2-1,2,-1
          DO 10 I=N1-1,2,-1
            A(I,J,K) = (0.0,0.0)
   10 CONTINUE
      DO 20 K=N3-1,2,-1
        DO 20 J=N2-1,2,-1
          DO 20 I=N1-1,2,-1
            A(I,J,K) = SIN(COS(B(I,J,K)))
     &               + COS(SIN(C(I,J,K)))
   20 CONTINUE
      END

      SUBROUTINE SUB23
      PARAMETER (N1=100,N2=100,N3=10)
      PARAMETER (N23=N2*N3)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N23),B(N1,N23),C(N1,N23)
      DO 10 J=N23-1,2,-1
        DO 10 I=N1-1,2,-1
          A(I,J) = (0.0,0.0)
   10 CONTINUE
      DO 20 J=N23-1,2,-1
        DO 20 I=N1-1,2,-1
          A(I,J) = SIN(COS(B(I,J)))
     &             + COS(SIN(C(I,J)))
   20 CONTINUE
      END

      SUBROUTINE SUB24
      PARAMETER (N1=100,N2=100,N3=10)
      PARAMETER (N123=N1*N2*N3)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N123),B(N123),C(N123)
      DO 10 I=N123,1,-1
        A(I) = (0.0,0.0)
   10 CONTINUE
      DO 20 I=N123,1,-1
        A(I) = B(I) / C(I) * SIN(B(I))
   20 CONTINUE
      END

      SUBROUTINE SUB31
      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)
      DO 10 K=N3-1,1,-1
        DO 10 J=1,N2-1
          DO 10 I=N1-1,1,-3
            A(I,J,K) = B(I,J,K) * C(I,J,K)
   10 CONTINUE
      END

      SUBROUTINE SUB32
      PARAMETER (N1=100,N2=100,N3=10)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N2,N3),B(N1,N2,N3),C(N1,N2,N3)
      DO 10 K=N3,2,-1
        DO 10 J=2,N2
          DO 10 I=N1,2,-3
            A(I,J,K) = (0.0,0.0)
   10 CONTINUE
      DO 20 K=N3,2,-1
        DO 20 J=2,N2
          DO 20 I=N1,2,-3
            A(I,J,K) = SIN(COS(B(I,J,K)))
     &               + COS(SIN(C(I,J,K)))
   20 CONTINUE
      END

      SUBROUTINE SUB33
      PARAMETER (N1=100,N2=100,N3=10)
      PARAMETER (N23=N2*N3)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N1,N23),B(N1,N23),C(N1,N23)
      DO 10 J=2,N23
        DO 10 I=N1,2,-3
          A(I,J) = (0.0,0.0)
   10 CONTINUE
      DO 20 J=2,N23
        DO 20 I=N1,2,-3
          A(I,J) = SIN(COS(B(I,J)))
     &             + COS(SIN(C(I,J)))
   20 CONTINUE
      END

      SUBROUTINE SUB34
      PARAMETER (N1=100,N2=100,N3=10)
      PARAMETER (N123=N1*N2*N3)
      COMMON /SSU/A,B,C
      COMPLEX*16 A(N123),B(N123),C(N123)
      DO 10 I=N123,1,-3
        A(I) = (0.0,0.0)
   10 CONTINUE
      DO 20 I=N123,1,-3
        A(I) = B(I) / C(I) * SIN(B(I))
   20 CONTINUE
      END
