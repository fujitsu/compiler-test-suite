       REAL A1(1200,2),A2(1200,2),A3(1200,2)
       REAL B1(1200,2),B2(1200,2),B3(1200,2)
       REAL C1(1200,2),C2(1200,2),C3(1200,2)
       REAL X(1200,2),Y(1200,2),Z(1200,2)
       LOGICAL L1T(1200,2),L2T(1200,2)
       LOGICAL L1F(1200,2),L2F(1200,2)
       DATA L1T/2400*.TRUE./,L1F/2400*.FALSE./
       DATA L2T/2400*.TRUE./,L2F/2400*.FALSE./
       DO 1 K=1,2
       DO 1 I=1,1200
         A1(I,K)=I
         A2(I,K)=I*2-1
         A3(I,K)=I*3-2
         B1(I,K)=-I
         B2(I,K)=-(I*2-1)
         B3(I,K)=-(I*3-2)
         C1(I,K)=I
         C2(I,K)=I*2-1
         C3(I,K)=I*3-2
         IF(MOD(I,2).EQ.0) THEN
            C1(I,K)=-I
            C2(I,K)=-(I*2-1)
            C3(I,K)=-(I*3-2)
            L1T(I,K)=L1F(I,K)
            L1F(I,K)=.TRUE.
         ENDIF
         IF(MOD(I,3).EQ.0) THEN
            L2T(I,K)=.NOT.L2T(I,K)
            L2F(I,K)=.TRUE.
         ENDIF
         X(I,K)=I-4.0
         Y(I,K)=-4.0+I/10
         Z(I,K)=-2.0+I/5
 1     CONTINUE
       N=1200
       L=2
       CALL SUB1(A1,A2,A3,B1,B2,B3,C1,C2,C3,X,Y,Z,L1T,L1F,L2T,L2F,N,L)
       PRINT *,A1,A2,A3
       PRINT *,A1,A2,A3
       PRINT *,C1,C2,C3
       PRINT *,L1T,L2T,L1F,L2F
       END
       SUBROUTINE SUB1(A1,A2,A3,B1,B2,B3,C1,C2,C3,
     E X,Y,Z,L1T,L1F,L2T,L2F,N,L)
       REAL A1(N,L),A2(N,L),A3(N,L)
       REAL B1(N,L),B2(N,L),B3(N,L)
       REAL C1(N,L),C2(N,L),C3(N,L)
       REAL X(N,L),Y(N,L),Z(N,L)
       LOGICAL L1T(N,L),L2T(N,L)
       LOGICAL L1F(N,L),L2F(N,L)
       DATA MM/1/
       N1=N-1
       N2=N-2
       N3=N-3
       I1=1
       DO 10 K=1,L
         DO 1 I=2,N1
           IF(.NOT.L1T(I,K)) A1(I,K)=-1.0D0
 1       CONTINUE
         DO 2 I=2,N2
           B2(I,MM)=-I-1+1.0D0
 2       CONTINUE
         DO 3 I=2,N3
           C3(I,K)=-I
 3       CONTINUE
         MM=N-1199
         DO 4 I=2,N2
           IF(L1T(I,K)) X(I,MM)=-B1(I-1,MM)
 4       CONTINUE
         DO 5 I=2,N3
           IF(.NOT.L1T(I,K)) Y(I,K)=C2(I-1,K)
 5       CONTINUE
         DO 6 I=2,N1
           Z(I,K)=A3(I-1,K)
 6       CONTINUE
 10    CONTINUE
       RETURN
       END
