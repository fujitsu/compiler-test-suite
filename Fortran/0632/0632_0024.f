      SUBROUTINE SUB01(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 K=2,20
      DO 10 J=2,10
      DO 10 I=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 10 L=2,10
      DO 10 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      IF (ABS(SUM(A)-5.12974520E+10)>1.0E+8) PRINT *,'NG SUB01-01-A'
      IF (ABS(SUM(B)-5.12974520E+10)>1.0E+8) PRINT *,'NG SUB01-01-B'
      IF (ABS(SUM(C)-3.20504344E+05)>1.0E+1) PRINT *,'NG SUB01-01-C'
      IF (ABS(SUM(D)-3.20910469E+05)>1.0E+1) PRINT *,'NG SUB01-01-D'

      DO 20 K=2,20
      DO 20 J=2,20,2
      DO 20 I=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 20 L=2,10
      DO 20 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      IF (ABS(SUM(A)-5.12977633E+10)>1.0E+8) PRINT *,'NG SUB01-02-A'
      IF (ABS(SUM(B)-5.12975421E+10)>1.0E+8) PRINT *,'NG SUB01-02-B'
      IF (ABS(SUM(C)-3.21245750E+05)>1.0E+1) PRINT *,'NG SUB01-02-C'
      IF (ABS(SUM(D)-3.21877500E+05)>1.0E+1) PRINT *,'NG SUB01-02-D'

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 K=2,20
      DO 10 J=2,10
      DO 10 I=2,20
      DO 11 L=2,10
      DO 11 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.12976323E+10)>1.0E+8) PRINT *,'NG SUB02-01-A'
      IF (ABS(SUM(B)-5.12977633E+10)>1.0E+8) PRINT *,'NG SUB02-01-B'
      IF (ABS(SUM(C)-3.21935500E+05)>1.0E+1) PRINT *,'NG SUB02-01-C'
      IF (ABS(SUM(D)-3.22115969E+05)>1.0E+1) PRINT *,'NG SUB02-01-D'

      DO 20 K=2,20
      DO 20 J=2,20,2
      DO 20 I=2,20
      DO 21 L=2,10
      DO 21 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.12980664E+10)>1.0E+8) PRINT *,'NG SUB02-02-A'
      IF (ABS(SUM(B)-5.12977633E+10)>1.0E+8) PRINT *,'NG SUB02-02-B'
      IF (ABS(SUM(C)-3.22450969E+05)>1.0   ) PRINT *,'NG SUB02-02-C'
      IF (ABS(SUM(D)-3.23082750E+05)>1.0E-1) PRINT *,'NG SUB02-02-D'

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 K=2,20
      DO 10 J=2,10
      DO 10 I=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 11 L=2,10
      DO 11 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.12983532E+10)>1.0E+8) PRINT *,'NG SUB03-01-A'
      IF (ABS(SUM(B)-5.12981320E+10)>1.0E+8) PRINT *,'NG SUB03-01-B'
      IF (ABS(SUM(C)-3.24011062E+05)>1.0   ) PRINT *,'NG SUB03-01-C'
      IF (ABS(SUM(D)-3.24191563E+05)>1.0   ) PRINT *,'NG SUB03-01-D'

      DO 20 K=2,20
      DO 20 J=2,20,2
      DO 20 I=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 21 L=2,10
      DO 21 M=2,10
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.12985907E+10)>1.0E+8) PRINT *,'NG SUB03-02-A'
      IF (ABS(SUM(B)-5.12981729E+10)>1.0E+8) PRINT *,'NG SUB03-02-B'
      IF (ABS(SUM(C)-3.25493625E+05)>1.0   ) PRINT *,'NG SUB03-02-C'
      IF (ABS(SUM(D)-3.26125344E+05)>1.0   ) PRINT *,'NG SUB03-02-D'

      RETURN
      END

      PROGRAM MAIN
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

      IF (ABS(SUM(A)-5.12985907E+10)>1.0E+8) PRINT *,'NG MAIN-A'
      IF (ABS(SUM(B)-5.12981729E+10)>1.0E+8) PRINT *,'NG MAIN-B'
      IF (ABS(SUM(C)-3.25493625E+05)>1.0E-1) PRINT *,'NG MAIN-C'
      IF (ABS(SUM(D)-3.26125344E+05)>1.0E-1) PRINT *,'NG MAIN-D'
      END
