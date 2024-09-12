       REAL A(100),B(100),C(100),Z(100)
       LOGICAL L(100)
       DATA N1/100/
       IX=1
       DO 11 I=1,N1
         L(I)=.TRUE.
         A(I)=0.1*I
         B(I)=0.2*I
         C(I)=-0.2*I
         Z(I)=-0.1*I
         IF(IX.EQ.1) THEN
          L(I)=.FALSE.
          IX=0
         ELSE
          IX=1
         ENDIF
  11   CONTINUE
       A(80)=-20.0D0
       B(80)=20.0
       C(77)=10.0D0
       CALL SUB1(A,B,C,Z,L,0)
       CALL SUB2(A,B,C,Z,L,0)
       CALL SUB3(A,B,C,Z,L,0)
       STOP
       END
       SUBROUTINE SUB1(A,B,C,Z,L,N)
       REAL A(N),B(N),C(N),Z(N)
       LOGICAL L(N)
       REAL VV(10)
       DATA VV/5.,10.,4.,9.,3.,8.,2.,7.,1.,6./
       LOGICAL LX(10)
       DATA LX/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E         .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
       N1=N
       DO 10 J=1,10
        VV(J)=J+1
        DO 1 I=2,N1-1
          A(I)=C(I)-9.0
   1    CONTINUE
        DO 2 I=2,N1
          S1=J+1
          IF(LX(J)) B(I)=MIN(A(I),S1)
   2    CONTINUE
        DO 3 I=2,N1-3
          S2=J+1
          C(I)=-1.10D0-S2
   3    CONTINUE
        DO 4 I=2,N1
          S3=J+1
          IF(L(I)) A(I)=Z(I)-1.10D0+S3
   4    CONTINUE
  10   CONTINUE
       PRINT *,Z,A,B,C,VV
       RETURN
       END
       SUBROUTINE SUB2(A,B,C,Z,L,N)
       REAL A(N),B(N),C(N),Z(N)
       LOGICAL L(N)
       REAL VV(10)
       DATA VV/5.,10.,4.,9.,3.,8.,2.,7.,1.,6./
       LOGICAL LX(10)
       DATA LX/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E         .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
       N1=N
       XX=0.0
       DO 10 J=1,10
        S1=XX+J
        DO 1 I=2,N1-1
          A(I)=C(I)-S1
   1    CONTINUE
        XX=S1+1.0
        DO 2 I=2,N1
          S2=XX+J
          IF(LX(J)) B(I)=MIN(A(I),S2)
   2    CONTINUE
        DO 3 I=2,N1-3
          C(I)=-1.10D0-S3
   3    CONTINUE
        DO 4 I=2,N1
          S3=XX+J
          A(I)=Z(I)-1.10D0+S3
   4    CONTINUE
  10   CONTINUE
       PRINT *,Z,A,B,C,VV
       RETURN
       END
       SUBROUTINE SUB3(A,B,C,Z,L,N)
       REAL A(N),B(N),C(N),Z(N)
       LOGICAL L(N)
       REAL VV(10)
       DATA VV/5.,10.,4.,9.,3.,8.,2.,7.,1.,6./
       LOGICAL LX(10)
       DATA LX/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E         .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
       N1=N
       DO 10 J=1,10
        VV(J)=J+1
        DO 1 I=2,N1-1
          A(I)=C(I)-9.0
   1    CONTINUE
        DO 2 I=2,N1
          S1=J+1
          IF(LX(J)) B(I)=MIN(A(I),S1)
   2    CONTINUE
        DO 3 I=2,N1-3
          S1=J+1
          C(I)=-1.10D0-S1
   3    CONTINUE
        DO 4 I=2,N1
          S1=J+1
          IF(L(I)) A(I)=Z(I)-1.10D0+S1
   4    CONTINUE
  10   CONTINUE
       PRINT *,Z,A,B,C,VV
       RETURN
       END
