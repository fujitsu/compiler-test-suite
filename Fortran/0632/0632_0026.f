      SUBROUTINE SUB01(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+C(I,J,K)**.3

      DO 10 L=2,10
      DO 10 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      IF (ABS(SUM(A)-5.49707440E+07)>1.0E+6) PRINT *,'NG SUB01-01-A'
      IF (ABS(SUM(B)-4.20602266E+10)>1.0E+8) PRINT *,'NG SUB01-01-B'
      IF (ABS(SUM(C)-7.55917500E+04)>1.0E+1) PRINT *,'NG SUB01-01-C'
      IF (ABS(SUM(D)-3.20910219E+05)>1.0) PRINT *,'NG SUB01-01-D'

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
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
       S=A(I,J,K,L,M)/8.+B(I,J,K,L,M)**.3
   11 CONTINUE

       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-3.19559148E+10)>1.0E+7) PRINT *,'NG SUB02-01-A'
      IF (ABS(SUM(B)-5.51296520E+07)>1.0E+6) PRINT *,'NG SUB02-01-B'
      IF (ABS(SUM(C)-3.90448500E+05)>1.0E+2) PRINT *,'NG SUB02-01-C'
      IF (ABS(SUM(D)-3.60604406E+05)>1.0E+2) PRINT *,'NG SUB02-01-D'

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3

      DO 11 L=2,20
      DO 11 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-1.39188832E+08)>1.0E+6) PRINT *,'NG SUB03-01-A'
      IF (ABS(SUM(B)-2.13397381E+10)>1.0E+8) PRINT *,'NG SUB03-01-B'
      IF (ABS(SUM(C)-3.61532781E+05)>1.0E+2) PRINT *,'NG SUB03-01-C'
      IF (ABS(SUM(D)-3.92189031E+05)>1.0E+2) PRINT *,'NG SUB03-01-D'

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3

      DO 21 L=2,20
      DO 21 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-1.39387424E+08)>1.0E+6) PRINT *,'NG SUB03-02-A'
      IF (ABS(SUM(B)-2.13397955E+10)>1.0E+8) PRINT *,'NG SUB03-02-B'
      IF (ABS(SUM(C)-4.55049500E+05)>1.0E+2) PRINT *,'NG SUB03-02-C'
      IF (ABS(SUM(D)-4.85706656E+05)>1.0E+2) PRINT *,'NG SUB03-02-D'

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3

      DO 31 L=2,20
      DO 31 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-1.77706160E+08)>1.0E+6) PRINT *,'NG SUB03-03-A'
      IF (ABS(SUM(B)-2.13708268E+10)>1.0E+8) PRINT *,'NG SUB03-03-B'
      IF (ABS(SUM(C)-5.58937188E+05)>1.0E+2) PRINT *,'NG SUB03-03-C'
      IF (ABS(SUM(D)-5.89610063E+05)>1.0E+2) PRINT *,'NG SUB03-03-D'

      DO 40 I=2,20
      DO 40 J=2,20
      DO 40 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 41 L=2,20
      DO 41 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   41 CONTINUE

       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   40 CONTINUE
      IF (ABS(SUM(A)-1.77883984E+08)>1.0E+6) PRINT *,'NG SUB03-04-A'
      IF (ABS(SUM(B)-2.13709988E+10)>1.0E+8) PRINT *,'NG SUB03-04-B'
      IF (ABS(SUM(C)-2.49476328E+05)>1.0E+2) PRINT *,'NG SUB03-04-C'
      IF (ABS(SUM(D)-2.80125844E+05)>1.0E+2) PRINT *,'NG SUB03-04-D'

      DO 50 I=2,20
      DO 50 J=2,20
      DO 50 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3

      DO 51 L=2,20
      DO 51 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   51 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   50 CONTINUE
      IF (ABS(SUM(A)-4.72638360E+07)>1.0E+6) PRINT *,'NG SUB03-05-A'
      IF (ABS(SUM(B)-2.13091041E+10)>1.0E+8) PRINT *,'NG SUB03-05-B'
      IF (ABS(SUM(C)-2.51216859E+05)>1.0E+2) PRINT *,'NG SUB03-05-C'
      IF (ABS(SUM(D)-2.81865719E+05)>1.0E+2) PRINT *,'NG SUB03-05-D'

      DO 60 I=2,20
      DO 60 J=2,20
      DO 60 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3

      DO 61 L=2,20
      DO 61 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   61 CONTINUE

       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   60 CONTINUE
      IF (ABS(SUM(A)-4.72662040E+07)>1.0E+6) PRINT *,'NG SUB03-06-A'
      IF (ABS(SUM(B)-2.13091082E+10)>1.0E+8) PRINT *,'NG SUB03-06-B'
      IF (ABS(SUM(C)-2.01426922E+05)>1.0E+2) PRINT *,'NG SUB03-06-C'
      IF (ABS(SUM(D)-2.32082656E+05)>1.0E+2) PRINT *,'NG SUB03-06-D'

      DO 70 I=2,20
      DO 70 J=2,20
      DO 70 K=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3

      DO 71 L=2,10
      DO 71 M=2,20
       S=A(I,J,K,L,M)/7.
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   71 CONTINUE

       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   70 CONTINUE
      IF (ABS(SUM(A)-5.13906320E+07)>1.0E+6) PRINT *,'NG SUB03-07-A'
      IF (ABS(SUM(B)-2.13091123E+10)>1.0E+8) PRINT *,'NG SUB03-07-B'
      IF (ABS(SUM(C)-1.40169641E+05)>1.0E+2) PRINT *,'NG SUB03-07-C'
      IF (ABS(SUM(D)-1.71726344E+05)>1.0E+2) PRINT *,'NG SUB03-07-D'

      RETURN
      END

      PROGRAM MAIN
      REAL A(3200000)
      REAL B(3200000)
      REAL C(8000)
      REAL D(8000)
      DO 10 J=1,8000
       C(J)=J**.5*.01
       D(J)=J*.01
      DO 10 I=1,400
       A((J-1)*400+I)=((J-1)*400+I)**.5*.01
       B((J-1)*400+I)=((J-1)*400+I)*.01
   10 CONTINUE
      CALL SUB01(A,B,C,D)
      CALL SUB02(B,A,D,C)
      CALL SUB03(A,B,C,D)

      IF (ABS(SUM(A)-5.13906320E+07)>1.0E+6) PRINT *,'NG MAIN-A'
      IF (ABS(SUM(B)-2.13091123E+10)>1.0E+8) PRINT *,'NG MAIN-B'
      IF (ABS(SUM(C)-1.40169641E+05)>1.0E+2) PRINT *,'NG MAIN-C'
      IF (ABS(SUM(D)-1.71726344E+05)>1.0E+2) PRINT *,'NG MAIN-D'
      END
