      SUBROUTINE SUB01(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 10 L=2,10
      DO 10 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      IF (ABS(SUM(A)-5.12988160E+10)>1.0E+8) PRINT *,'NG SUB01-01-A'
      IF (ABS(SUM(B)-5.12976937E+10)>1.0E+8) PRINT *,'NG SUB01-01-B'
      IF (ABS(SUM(C)-3.21020156E+05)>1.0E+1) PRINT *,'NG SUB01-01-C'
      IF (ABS(SUM(D)-3.21877594E+05)>1.0E+1) PRINT *,'NG SUB01-01-D'

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,15
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 20 L=2,20
      DO 20 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      IF (ABS(SUM(A)-5.12993894E+10)>1.0E+8) PRINT *,'NG SUB01-02-A'
      IF (ABS(SUM(B)-5.12978330E+10)>1.0E+8) PRINT *,'NG SUB01-02-B'
      IF (ABS(SUM(C)-3.22373656E+05)>1.0E-1) PRINT *,'NG SUB01-02-C'
      IF (ABS(SUM(D)-3.23231063E+05)>1.0E-1) PRINT *,'NG SUB01-02-D'

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,20,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 30 L=2,10,2
      DO 30 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      IF (ABS(SUM(A)-5.12995656E+10)>1.0E+8) PRINT *,'NG SUB01-03-A'
      IF (ABS(SUM(B)-5.12980050E+10)>1.0E+8) PRINT *,'NG SUB01-03-B'
      IF (ABS(SUM(C)-3.23340687E+05)>1.0E+1) PRINT *,'NG SUB01-03-C'
      IF (ABS(SUM(D)-3.24198094E+05)>1.0E+1) PRINT *,'NG SUB01-03-D'

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,20
      DO 11 L=2,10
      DO 11 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13004872E+10)>1.0E+8) PRINT *,'NG SUB02-01-A'
      IF (ABS(SUM(B)-5.12997868E+10)>1.0E+8) PRINT *,'NG SUB02-01-B'
      IF (ABS(SUM(C)-3.24321000E+05)>1.0E+1) PRINT *,'NG SUB02-01-C'
      IF (ABS(SUM(D)-3.25178375E+05)>1.0E+1) PRINT *,'NG SUB02-01-D'

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,15
      DO 21 L=2,20
      DO 21 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13014784E+10)>1.0E+8) PRINT *,'NG SUB02-02-A'
      IF (ABS(SUM(B)-5.12999260E+10)>1.0E+8) PRINT *,'NG SUB02-02-B'
      IF (ABS(SUM(C)-3.25674656E+05)>1.0E+1) PRINT *,'NG SUB02-02-C'
      IF (ABS(SUM(D)-3.26532063E+05)>1.0E+1) PRINT *,'NG SUB02-02-D'

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,20,2
      DO 31 L=2,10,2
      DO 31 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13016504E+10)>1.0E+8) PRINT *,'NG SUB02-03-A'
      IF (ABS(SUM(B)-5.13000940E+10)>1.0E+8) PRINT *,'NG SUB02-03-B'
      IF (ABS(SUM(C)-3.26641125E+05)>1.0   ) PRINT *,'NG SUB02-03-C'
      IF (ABS(SUM(D)-3.27498500E+05)>1.0   ) PRINT *,'NG SUB02-03-D'

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 11 L=2,10
      DO 11 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13025802E+10)>1.0E+8) PRINT *,'NG SUB03-01-A'
      IF (ABS(SUM(B)-5.13018675E+10)>1.0E+8) PRINT *,'NG SUB03-01-B'
      IF (ABS(SUM(C)-3.29458094E+05)>1.0E+1) PRINT *,'NG SUB03-01-C'
      IF (ABS(SUM(D)-3.30315500E+05)>1.0E+1) PRINT *,'NG SUB03-01-D'

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,15
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 21 L=2,20
      DO 21 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13035633E+10)>1.0E+8) PRINT *,'NG SUB03-02-A'
      IF (ABS(SUM(B)-5.13020150E+10)>1.0E+8) PRINT *,'NG SUB03-02-B'
      IF (ABS(SUM(C)-3.32165750E+05)>1.0E-1) PRINT *,'NG SUB03-02-C'
      IF (ABS(SUM(D)-3.33023125E+05)>1.0E-1) PRINT *,'NG SUB03-02-D'

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,20,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 31 L=2,10,2
      DO 31 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13036902E+10)>1.0E+8) PRINT *,'NG SUB03-03-A'
      IF (ABS(SUM(B)-5.13021870E+10)>1.0E+8) PRINT *,'NG SUB03-03-B'
      IF (ABS(SUM(C)-3.34099875E+05)>1.0E+1) PRINT *,'NG SUB03-03-C'
      IF (ABS(SUM(D)-3.34957219E+05)>1.0E+1) PRINT *,'NG SUB03-03-D'

      RETURN
      END

      PROGRAM MAIN
      SAVE
      REAL A(3200000)
      REAL B(3200000)
      REAL C(8000)
      REAL D(8000)
      DO 10 J=1,8000
       C(J)=J*.01
       D(J)=J*.01
      DO 10 I=1,400
       A((J-1)*400+I)=((J-1)*400+I)*.01
       B((J-1)*400+I)=((J-1)*400+I)*.01
   10 CONTINUE
      CALL SUB01(A,B,C,D)
      CALL SUB02(B,A,D,C)
      CALL SUB03(A,B,C,D)

      IF (ABS(SUM(A)-5.13036902E+10)>1.0E+8) PRINT *,'NG MAIN-A'
      IF (ABS(SUM(B)-5.13021870E+10)>1.0E+8) PRINT *,'NG MAIN-B'
      IF (ABS(SUM(C)-3.34099875E+05)>1.0E+1) PRINT *,'NG MAIN-C'
      IF (ABS(SUM(D)-3.34957219E+05)>1.0E+1) PRINT *,'NG MAIN-D'
      END
