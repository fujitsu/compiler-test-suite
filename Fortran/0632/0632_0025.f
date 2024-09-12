      SUBROUTINE SUB01(A,B,C,D)
      REAL A(18,18,18,18,18)
      REAL B(18,18,18,18,18)
      REAL C(18,18,18)
      REAL D(18,18,18)

      DO 10 I=2,18
      DO 10 J=2,18
      DO 10 K=2,18
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 10 L=2,18
      DO 10 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      IF (ABS(SUM(A)-18715932.0)>1.0E+5) PRINT *,'NG SUB01-01-A'
      IF (ABS(SUM(B)-17553374.0)>1.0E+3) PRINT *,'NG SUB01-01-B'
      IF (ABS(SUM(C)-3671.41064)>1.0E-2) PRINT *,'NG SUB01-01-C'
      IF (ABS(SUM(D)-4285.53320)>1.0E-2) PRINT *,'NG SUB01-01-D'

      DO 20 I=2,18
      DO 20 J=2,18
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 20 L=2,18
      DO 20 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      IF (ABS(SUM(A)-18820196.0)>1.0E+5) PRINT *,'NG SUB01-02-A'
      IF (ABS(SUM(B)-17681628.0)>1.0E+4) PRINT *,'NG SUB01-02-B'
      IF (ABS(SUM(C)-4368.10352)>1.0E-3) PRINT *,'NG SUB01-02-C'
      IF (ABS(SUM(D)-4982.22412)>1.0E-2) PRINT *,'NG SUB01-02-D'

      DO 30 I=2,18
      DO 30 J=2,18
      DO 30 K=2,18,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 30 L=2,18
      DO 30 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      IF (ABS(SUM(A)-18937606.0)>1.0E+5) PRINT *,'NG SUB01-03-A'
      IF (ABS(SUM(B)-17807124.0)>1.0E+4) PRINT *,'NG SUB01-03-B'
      IF (ABS(SUM(C)-5064.80078)>1.0E-2) PRINT *,'NG SUB01-03-C'
      IF (ABS(SUM(D)-5678.92432)>1.0E-2) PRINT *,'NG SUB01-03-D'

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
      REAL A(18,18,18,18,18)
      REAL B(18,18,18,18,18)
      REAL C(18,18,18)
      REAL D(18,18,18)

      DO 10 I=2,18
      DO 10 J=2,18
      DO 10 K=2,18
      DO 11 L=2,18
      DO 11 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-20509606.0)>1.0E+6) PRINT *,'NG SUB02-01-A'
      IF (ABS(SUM(B)-19183962.0)>1.0E+5) PRINT *,'NG SUB02-01-B'
      IF (ABS(SUM(C)-5766.66113)>1.0E-2) PRINT *,'NG SUB02-01-C'
      IF (ABS(SUM(D)-6380.78613)>1.0E-2) PRINT *,'NG SUB02-01-D'

      DO 20 I=2,18
      DO 20 J=2,18
      DO 20 K=2,10
      DO 21 L=2,18
      DO 21 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-20617982.0)>1.0E+5) PRINT *,'NG SUB02-02-A'
      IF (ABS(SUM(B)-19334424.0)>1.0E+5) PRINT *,'NG SUB02-02-B'
      IF (ABS(SUM(C)-6463.35352)>1.0E-3) PRINT *,'NG SUB02-02-C'
      IF (ABS(SUM(D)-7077.47852)>1.0E-2) PRINT *,'NG SUB02-02-D'

      DO 30 I=2,18
      DO 30 J=2,18
      DO 30 K=2,18,2
      DO 31 L=2,18
      DO 31 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-20724474.0)>1.0E+5) PRINT *,'NG SUB02-03-A'
      IF (ABS(SUM(B)-19482196.0)>1.0E+4) PRINT *,'NG SUB02-03-B'
      IF (ABS(SUM(C)-7160.04590)>1.0E-2) PRINT *,'NG SUB02-03-C'
      IF (ABS(SUM(D)-7774.17090)>1.0E-2) PRINT *,'NG SUB02-03-D'

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      REAL A(18,18,18,18,18)
      REAL B(18,18,18,18,18)
      REAL C(18,18,18)
      REAL D(18,18,18)

      DO 10 I=2,18
      DO 10 J=2,18
      DO 10 K=2,18
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 11 L=2,18
      DO 11 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-22012612.0)>1.0E+5) PRINT *,'NG SUB03-01-A'
      IF (ABS(SUM(B)-20945210.0)>1.0E+5) PRINT *,'NG SUB03-01-B'
      IF (ABS(SUM(C)-9177.88672)>1.0E-2) PRINT *,'NG SUB03-01-C'
      IF (ABS(SUM(D)-9792.01074)>1.0E-2) PRINT *,'NG SUB03-01-D'

      DO 20 I=2,18
      DO 20 J=2,18
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 21 L=2,18
      DO 21 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-22153120.0)>1.0E+5) PRINT *,'NG SUB03-02-A'
      IF (ABS(SUM(B)-21052622.0)>1.0E+5) PRINT *,'NG SUB03-02-B'
      IF (ABS(SUM(C)-10571.2812)>1.0E-3) PRINT *,'NG SUB03-02-C'
      IF (ABS(SUM(D)-11185.4043)>1.0E-2) PRINT *,'NG SUB03-02-D'

      DO 30 I=2,18
      DO 30 J=2,18
      DO 30 K=2,18,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 31 L=2,18
      DO 31 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-22293176.0)>1.0E+5) PRINT *,'NG SUB03-03-A'
      IF (ABS(SUM(B)-21156770.0)>1.0E+5) PRINT *,'NG SUB03-03-B'
      IF (ABS(SUM(C)-11964.6826)>1.0E-1) PRINT *,'NG SUB03-03-C'
      IF (ABS(SUM(D)-12578.8096)>1.0E-1) PRINT *,'NG SUB03-03-D'

      RETURN
      END

      PROGRAM MAIN
      REAL A(3200000)
      REAL B(3200000)
      REAL C(8000)
      REAL D(8000)
      DO 10 J=1,8000
       C(J)=J**.5*.01
       D(J)=J**.5*.01
      DO 10 I=1,400
       A((J-1)*400+I)=((J-1)*400+I)**.5*.01
       B((J-1)*400+I)=((J-1)*400+I)**.5*.01
   10 CONTINUE
      CALL SUB01(A,B,C,D)
      CALL SUB02(B,A,D,C)
      CALL SUB03(A,B,C,D)

      IF (ABS(SUM(A)-42539224.0)>1.0E+6) PRINT *,'NG MAIN-A'
      IF (ABS(SUM(B)-41402820.0)>1.0E+6) PRINT *,'NG MAIN-B'
      IF (ABS(SUM(C)-13765.8535)>1.0E-2) PRINT *,'NG MAIN-C'
      IF (ABS(SUM(D)-14379.9805)>1.0E-2) PRINT *,'NG MAIN-D'
      END
