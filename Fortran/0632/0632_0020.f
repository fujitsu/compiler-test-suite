      SUBROUTINE SUB01(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 M=1,20
      DO 10 L=1,20
      DO 10 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13007288E+10)>1.0E+8) PRINT *,'NG SUB01-01-A'
      IF (ABS(SUM(B)-5.12980050E+10)>1.0E+8) PRINT *,'NG SUB01-01-B'
      IF (ABS(SUM(C)-3.21183063E+05)>1.0E+1) PRINT *,'NG SUB01-01-C'
      IF (ABS(SUM(D)-3.22183062E+05)>1.0E+1) PRINT *,'NG SUB01-01-D'

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 20 J=1,20
      DO 20 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13012449E+10)>1.0E+8) PRINT *,'NG SUB01-02-A'
      IF (ABS(SUM(B)-5.12985252E+10)>1.0E+8) PRINT *,'NG SUB01-02-B'
      IF (ABS(SUM(C)-3.23116906E+05)>1.0E+1) PRINT *,'NG SUB01-02-C'
      IF (ABS(SUM(D)-3.24116938E+05)>1.0E+1) PRINT *,'NG SUB01-02-D'

      DO 30 M=2,20
      DO 30 L=2,10
      DO 30 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 30 J=1,20
      DO 30 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13014866E+10)>1.0E+8) PRINT *,'NG SUB01-03-A'
      IF (ABS(SUM(B)-5.12987587E+10)>1.0E+8) PRINT *,'NG SUB01-03-B'
      IF (ABS(SUM(C)-3.23987344E+05)>1.0E+1) PRINT *,'NG SUB01-03-C'
      IF (ABS(SUM(D)-3.24987375E+05)>1.0E+1) PRINT *,'NG SUB01-03-D'

      DO 40 M=2,20
      DO 40 L=2,20,2
      DO 40 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 40 J=1,20
      DO 40 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   40 CONTINUE
      IF (ABS(SUM(A)-5.13017651E+10)>1.0E+8) PRINT *,'NG SUB01-04-A'
      IF (ABS(SUM(B)-5.12990331E+10)>1.0E+8) PRINT *,'NG SUB01-04-B'
      IF (ABS(SUM(C)-3.24954219E+05)>1.0E+1) PRINT *,'NG SUB01-04-C'
      IF (ABS(SUM(D)-3.25954250E+05)>1.0E+1) PRINT *,'NG SUB01-04-D'

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 M=1,20
      DO 10 L=1,20
      DO 10 K=1,20
      DO 11 J=1,20
      DO 11 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13050419E+10)>1.0E+8) PRINT *,'NG SUB02-01-A'
      IF (ABS(SUM(B)-5.13023099E+10)>1.0E+8) PRINT *,'NG SUB02-01-B'
      IF (ABS(SUM(C)-3.26096594E+05)>1.0E+1) PRINT *,'NG SUB02-01-C'
      IF (ABS(SUM(D)-3.27096656E+05)>1.0E+1) PRINT *,'NG SUB02-01-D'

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=1,20
      DO 21 J=1,20
      DO 21 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13055539E+10)>1.0E+8) PRINT *,'NG SUB02-02-A'
      IF (ABS(SUM(B)-5.13028178E+10)>1.0E+8) PRINT *,'NG SUB02-02-B'
      IF (ABS(SUM(C)-3.28030500E+05)>1.0E+1) PRINT *,'NG SUB02-02-C'
      IF (ABS(SUM(D)-3.29030469E+05)>1.0E+1) PRINT *,'NG SUB02-02-D'

      DO 30 M=2,20
      DO 30 L=2,10
      DO 30 K=2,20
      DO 31 J=1,20
      DO 31 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13057915E+10)>1.0E+8) PRINT *,'NG SUB02-03-A'
      IF (ABS(SUM(B)-5.13030554E+10)>1.0E+8) PRINT *,'NG SUB02-03-B'
      IF (ABS(SUM(C)-3.28900750E+05)>1.0E+1) PRINT *,'NG SUB02-03-C'
      IF (ABS(SUM(D)-3.29900719E+05)>1.0E+1) PRINT *,'NG SUB02-03-D'

      DO 40 M=2,20
      DO 40 L=2,20,2
      DO 40 K=2,20
      DO 41 J=1,20
      DO 41 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   41 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   40 CONTINUE
      IF (ABS(SUM(A)-5.13060659E+10)>1.0E+8) PRINT *,'NG SUB02-04-A'
      IF (ABS(SUM(B)-5.13033339E+10)>1.0E+8) PRINT *,'NG SUB02-04-B'
      IF (ABS(SUM(C)-3.29867812E+05)>1.0E+1) PRINT *,'NG SUB02-04-C'
      IF (ABS(SUM(D)-3.30867875E+05)>1.0E+1) PRINT *,'NG SUB02-04-D'

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      SAVE
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 M=1,20
      DO 10 L=1,20
      DO 10 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 11 J=1,20
      DO 11 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13093427E+10)>1.0E+8) PRINT *,'NG SUB03-01-A'
      IF (ABS(SUM(B)-5.13066107E+10)>1.0E+8) PRINT *,'NG SUB03-01-B'
      IF (ABS(SUM(C)-3.33153875E+05)>1.0E+1) PRINT *,'NG SUB03-01-C'
      IF (ABS(SUM(D)-3.34153906E+05)>1.0E+1) PRINT *,'NG SUB03-01-D'

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 21 J=1,20
      DO 21 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13098547E+10)>1.0E+8) PRINT *,'NG SUB03-02-A'
      IF (ABS(SUM(B)-5.13071186E+10)>1.0E+8) PRINT *,'NG SUB03-02-B'
      IF (ABS(SUM(C)-3.37021656E+05)>1.0E+1) PRINT *,'NG SUB03-02-C'
      IF (ABS(SUM(D)-3.38021625E+05)>1.0E+1) PRINT *,'NG SUB03-02-D'

      DO 30 M=2,20
      DO 30 L=2,10
      DO 30 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 31 J=1,20
      DO 31 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13100882E+10)>1.0E+8) PRINT *,'NG SUB03-03-A'
      IF (ABS(SUM(B)-5.13073603E+10)>1.0E+8) PRINT *,'NG SUB03-03-B'
      IF (ABS(SUM(C)-3.38762062E+05)>1.0E+1) PRINT *,'NG SUB03-03-C'
      IF (ABS(SUM(D)-3.39762063E+05)>1.0E+1) PRINT *,'NG SUB03-03-D'

      DO 40 M=2,20
      DO 40 L=2,20,2
      DO 40 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.

      DO 41 J=1,20
      DO 41 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   41 CONTINUE

       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   40 CONTINUE
      IF (ABS(SUM(A)-5.13103626E+10)>1.0E+8) PRINT *,'NG SUB03-04-A'
      IF (ABS(SUM(B)-5.13076347E+10)>1.0E+8) PRINT *,'NG SUB03-04-B'
      IF (ABS(SUM(C)-3.40695750E+05)>1.0E+1) PRINT *,'NG SUB03-04-C'
      IF (ABS(SUM(D)-3.41695719E+05)>1.0E+1) PRINT *,'NG SUB03-04-D'

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

      IF (ABS(SUM(A)-5.13103626E+10)>1.0E+8) PRINT *,'NG MAIN-A'
      IF (ABS(SUM(B)-5.13076347E+10)>1.0E+8) PRINT *,'NG MAIN-B'
      IF (ABS(SUM(C)-3.40695750E+05)>1.0E+1) PRINT *,'NG MAIN-C'
      IF (ABS(SUM(D)-3.41695719E+05)>1.0E+1) PRINT *,'NG MAIN-D'
      END
