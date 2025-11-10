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

      DO 10 L=2,20
      DO 10 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13003971E+10)>1.0E+8) PRINT *,'NG SUB01-01-A'
      IF (ABS(SUM(B)-5.12979681E+10)>1.0E+8) PRINT *,'NG SUB01-01-B'
      IF (ABS(SUM(C)-3.21020156E+05)>1.0E+1) PRINT *,'NG SUB01-01-C'
      IF (ABS(SUM(D)-3.21877594E+05)>1.0E+1) PRINT *,'NG SUB01-01-D'

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 20 L=2,20
      DO 20 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13005609E+10)>1.0E+8) PRINT *,'NG SUB01-02-A'
      IF (ABS(SUM(B)-5.12981361E+10)>1.0E+8) PRINT *,'NG SUB01-02-B'
      IF (ABS(SUM(C)-3.21890563E+05)>1.0E+1) PRINT *,'NG SUB01-02-C'
      IF (ABS(SUM(D)-3.22747938E+05)>1.0E+1) PRINT *,'NG SUB01-02-D'

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,20,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 30 L=2,20
      DO 30 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13010606E+10)>1.0E+8) PRINT *,'NG SUB01-03-A'
      IF (ABS(SUM(B)-5.12986235E+10)>1.0E+8) PRINT *,'NG SUB01-03-B'
      IF (ABS(SUM(C)-3.22857313E+05)>1.0E+1) PRINT *,'NG SUB01-03-C'
      IF (ABS(SUM(D)-3.23714750E+05)>1.0E+1) PRINT *,'NG SUB01-03-D'

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
      DO 11 L=2,20
      DO 11 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13039852E+10)>1.0E+8) PRINT *,'NG SUB02-01-A'
      IF (ABS(SUM(B)-5.13015480E+10)>1.0E+8) PRINT *,'NG SUB02-01-B'
      IF (ABS(SUM(C)-3.23837375E+05)>1.0E+1) PRINT *,'NG SUB02-01-C'
      IF (ABS(SUM(D)-3.24694781E+05)>1.0E+1) PRINT *,'NG SUB02-01-D'

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,10
      DO 21 L=2,20
      DO 21 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13041449E+10)>1.0E+8) PRINT *,'NG SUB02-02-A'
      IF (ABS(SUM(B)-5.13017119E+10)>1.0E+8) PRINT *,'NG SUB02-02-B'
      IF (ABS(SUM(C)-3.24707625E+05)>1.0E+1) PRINT *,'NG SUB02-02-C'
      IF (ABS(SUM(D)-3.25564969E+05)>1.0E+1) PRINT *,'NG SUB02-02-D'

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,20,2
      DO 31 L=2,20
      DO 31 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13046364E+10)>1.0E+8) PRINT *,'NG SUB02-03-A'
      IF (ABS(SUM(B)-5.13021870E+10)>1.0E+8) PRINT *,'NG SUB02-03-B'
      IF (ABS(SUM(C)-3.25674125E+05)>1.0   ) PRINT *,'NG SUB02-03-C'
      IF (ABS(SUM(D)-3.26531437E+05)>1.0E+1) PRINT *,'NG SUB02-03-D'

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

      DO 11 L=2,20
      DO 11 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      IF (ABS(SUM(A)-5.13075569E+10)>1.0E+8) PRINT *,'NG SUB03-01-A'
      IF (ABS(SUM(B)-5.13051116E+10)>1.0E+8) PRINT *,'NG SUB03-01-B'
      IF (ABS(SUM(C)-3.28491063E+05)>1.0E+1) PRINT *,'NG SUB03-01-C'
      IF (ABS(SUM(D)-3.29348437E+05)>1.0E+1) PRINT *,'NG SUB03-01-D'

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 21 L=2,20
      DO 21 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      IF (ABS(SUM(A)-5.13076838E+10)>1.0E+8) PRINT *,'NG SUB03-02-A'
      IF (ABS(SUM(B)-5.13052754E+10)>1.0E+8) PRINT *,'NG SUB03-02-B'
      IF (ABS(SUM(C)-3.30231594E+05)>1.0E+1) PRINT *,'NG SUB03-02-C'
      IF (ABS(SUM(D)-3.31088937E+05)>1.0E+1) PRINT *,'NG SUB03-02-D'

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,20,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.

      DO 31 L=2,20
      DO 31 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE

       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      IF (ABS(SUM(A)-5.13079951E+10)>1.0E+8) PRINT *,'NG SUB03-03-A'
      IF (ABS(SUM(B)-5.13057669E+10)>1.0E+8) PRINT *,'NG SUB03-03-B'
      IF (ABS(SUM(C)-3.32165812E+05)>1.0   ) PRINT *,'NG SUB03-03-C'
      IF (ABS(SUM(D)-3.33023156E+05)>1.0   ) PRINT *,'NG SUB03-03-D'

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

      IF (ABS(SUM(A)-5.13079951E+10)>1.0E+9) PRINT *,'NG MAIN-A'
      IF (ABS(SUM(B)-5.13057669E+10)>1.0E+9) PRINT *,'NG MAIN-B'
      IF (ABS(SUM(C)-3.32165656E+05)>1.0E+1) PRINT *,'NG MAIN-C'
      IF (ABS(SUM(D)-3.33023031E+05)>1.0E+1) PRINT *,'NG MAIN-D'
      END
