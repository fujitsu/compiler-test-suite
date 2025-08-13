      SUBROUTINE SUB01(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 M=2,20
      DO 10 L=2,20
      DO 10 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 10 J=2,20
      DO 10 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      IF (ABS(SUM(A)-2476099.00)>1.0E-6) PRINT *,'NG SUB01-01-A'
      IF (ABS(SUM(B)-406212.750)>1.0E+4) PRINT *,'NG SUB01-01-B'
      IF (ABS(SUM(C)-979.932373)>1.0E-1) PRINT *,'NG SUB01-01-C'
      IF (ABS(SUM(D)-1837.17065)>1.0E-1) PRINT *,'NG SUB01-01-D'

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=2,10
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 20 J=2,20
      DO 20 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      IF (ABS(SUM(A)-2676111.25)>1.0E+4) PRINT *,'NG SUB01-02-A'
      IF (ABS(SUM(B)-608117.500)>1.0E+2) PRINT *,'NG SUB01-02-B'
      IF (ABS(SUM(C)-1850.15710)>1.0E-1) PRINT *,'NG SUB01-02-C'
      IF (ABS(SUM(D)-2707.43921)>1.0E-1) PRINT *,'NG SUB01-02-D'

      DO 30 M=2,20
      DO 30 L=2,20,2
      DO 30 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 30 J=2,20
      DO 30 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      IF (ABS(SUM(A)-2895222.75)>1.0E+4) PRINT *,'NG SUB01-03-A'
      IF (ABS(SUM(B)-822190.437)>1.0E+4) PRINT *,'NG SUB01-03-B'
      IF (ABS(SUM(C)-2817.01660)>1.0E-1) PRINT *,'NG SUB01-03-C'
      IF (ABS(SUM(D)-3674.29663)>1.0E+1) PRINT *,'NG SUB01-03-D'

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 M=2,20
      DO 10 L=2,20
      DO 10 K=2,20
      DO 11 J=2,20
      DO 11 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5358476.00)>1.0E+4) PRINT *,'NG SUB02-01-A'
      IF (ABS(SUM(B)-3288757.50)>1.0E+5) PRINT *,'NG SUB02-01-B'
      IF (ABS(SUM(C)-3796.83911)>1.0E+1) PRINT *,'NG SUB02-01-C'
      IF (ABS(SUM(D)-4654.22803)>1.0E-1) PRINT *,'NG SUB02-01-D'

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=2,10
      DO 21 J=2,20
      DO 21 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5557867.50)>1.0E+4) PRINT *,'NG SUB02-02-A'
      IF (ABS(SUM(B)-3509377.25)>1.0E+5) PRINT *,'NG SUB02-02-B'
      IF (ABS(SUM(C)-4667.20605)>1.0E-1) PRINT *,'NG SUB02-02-C'
      IF (ABS(SUM(D)-5524.58887)>1.0E-1) PRINT *,'NG SUB02-02-D'

      DO 30 M=2,20
      DO 30 L=2,20,2
      DO 30 K=2,20
      DO 31 J=2,20
      DO 31 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-5790445.50)>1.0E+5) PRINT *,'NG SUB02-03-A'
      IF (ABS(SUM(B)-3713780.50)>1.0E+3) PRINT *,'NG SUB02-03-B'
      IF (ABS(SUM(C)-5634.03320)>1.0E+1) PRINT *,'NG SUB02-03-C'
      IF (ABS(SUM(D)-6491.30127)>1.0E+1) PRINT *,'NG SUB02-03-D'

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 M=2,20
      DO 10 L=2,20
      DO 10 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 11 J=2,20
      DO 11 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-8294485.00)>1.0E+5) PRINT *,'NG SUB03-01-A'
      IF (ABS(SUM(B)-6190228.50)>1.0E+2) PRINT *,'NG SUB03-01-B'
      IF (ABS(SUM(C)-8451.04199)>1.0E+1) PRINT *,'NG SUB03-01-C'
      IF (ABS(SUM(D)-9308.45605)>1.0E+1) PRINT *,'NG SUB03-01-D'

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=2,10
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 21 J=2,20
      DO 21 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-8534542.00)>1.0E+5) PRINT *,'NG SUB03-02-A'
      IF (ABS(SUM(B)-6343289.50)>1.0E+5) PRINT *,'NG SUB03-02-B'
      IF (ABS(SUM(C)-10191.7930)>1.0E-1) PRINT *,'NG SUB03-02-C'
      IF (ABS(SUM(D)-11049.1777)>1.0E-1) PRINT *,'NG SUB03-02-D'

      DO 30 M=2,20
      DO 30 L=2,20,2
      DO 30 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 31 J=2,20
      DO 31 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-8685600.00)>1.0E+5) PRINT *,'NG SUB03-03-A'
      IF (ABS(SUM(B)-6499483.50)>1.0E+6) PRINT *,'NG SUB03-03-B'
      IF (ABS(SUM(C)-12125.3271)>1.0E+1) PRINT *,'NG SUB03-03-C'
      IF (ABS(SUM(D)-12982.6025)>1.0E+1) PRINT *,'NG SUB03-03-D'

      RETURN
      END

      PROGRAM MAIN
      SAVE
      REAL A(3200000)
      REAL B(3200000)
      REAL C(8000)
      REAL D(8000)
      DO 10 J=1,8000
       C(J)=0.
       D(J)=0.
      DO 10 I=1,400
       A((J-1)*400+I)=0.
       B((J-1)*400+I)=0.
   10 CONTINUE
      CALL SUB01(A,B,C,D)
      CALL SUB02(B,A,D,C)
      CALL SUB03(A,B,C,D)
      IF (ABS(SUM(A)-8685600.00)>1.0E+5) PRINT *,'NG MAIN-A'
      IF (ABS(SUM(B)-6499483.50)>1.0E+6) PRINT *,'NG MAIN-B'
      IF (ABS(SUM(C)-12125.3271)>1.0E+1) PRINT *,'NG MAIN-C'
      IF (ABS(SUM(D)-12982.6025)>1.0E+1) PRINT *,'NG MAIN-D'
      END
