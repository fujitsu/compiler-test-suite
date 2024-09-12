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
       CALL SUB1(A,B,C,Z,L,N1)
       CALL SUB2(A,B,C,Z,L,N1)
       CALL SUB3(A,B,C,Z,L,N1)
       STOP
       END
       SUBROUTINE SUB1(A,B,C,Z,L,N)
       REAL A(N),B(N),C(N),Z(N)
       LOGICAL L(N)
       N1=N
       DO 1 I=2,N1-1
         A(I-1)=C(I)-9.0
   1   CONTINUE
       DO 2 I=2,N1
         IF(L(1)) B(I)=MIN(A(I),-1.0D0)
   2   CONTINUE
       DO 3 I=2,N1-3
         C(I)=-1.10D0-I
   3   CONTINUE
       DO 4 I=2,N1
         A(I)=Z(I)-1.10D0+I
   4   CONTINUE
       PRINT *,Z,A,B,C
       RETURN
       END
       SUBROUTINE SUB2(A,B,C,Z,L,N)
       REAL A(N),B(N),C(N),Z(N)
       LOGICAL L(N)
       N1=N
       DO 1 I=2,N1-1
         A(I-1)=C(I)-9.0
   1   CONTINUE
       DO 2 I=2,N1
         B(I)=MIN(A(I),-1.0D0)
   2   CONTINUE
       DO 3 I=2,N1-3
         C(I)=-1.10D0-I
   3   CONTINUE
       DO 4 I=2,N1
         IF(L(2)) A(I)=Z(I)-1.10D0+I
   4   CONTINUE
       PRINT *,Z,A,B,C
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
        DO 1 I=2,N1-1
          A(I-1)=C(I)-9.0
   1    CONTINUE
        DO 2 I=2,N1
          Z(I)=C(I)-VV(J)
          IF(L(J)) B(I)=MIN(A(I),-1.0D0)
   2    CONTINUE
        DO 3 I=2,N1-3
          C(I)=-1.10D0-VV(J)
          IF(LX(J)) C(I)=MIN(C(I),VV(J))
   3    CONTINUE
        DO 4 I=2,N1
          A(I)=Z(I)-1.10D0+VV(J)
   4    CONTINUE
  10    CONTINUE
       PRINT *,Z,A,B,C,VV,LX,L
       RETURN
       END
