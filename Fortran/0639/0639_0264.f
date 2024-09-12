       REAL*8 A1(50),A2(50,50),A3(50),
     1        B1(50),B2(50,50),B3(50),
     2        C1(50),C2(50,50),C3(50),
     3        X1(50),X2(50,50),
     4        Y1(50),Y2(50,50),
     E        Z1(50),Z2(50,50)
       DATA A1,A2,A3/50*1.0D0,2500*2.0D0,50*3.0D0/
       DATA B1,B2,B3/50*3.0D0,2500*1.0D0,50*2.0D0/
       DATA C1,C2,C3/50*5.0D0,2500*3.0D0,50*5.0D0/
       DATA X1,X2/50*5.0D0,2500*3.0D0/
       DATA Y1,Y2/50*5.0D0,2500*3.0D0/
       DATA Z1,Z2/50*5.0D0,2500*3.0D0/
       LOGICAL LT(50),LF(50)
       DATA LT,LF/50*.FALSE.,50*.TRUE./
       INTEGER IDXA(50),IDXB(50)
       DATA IDXA,IDXB/50*1,50*2/
       COMMON /BLK/IC
       IC=2
       ID=2

       CALL SUB(A1,A2,A3,B1,B2,B3,C1,C2,C3,X1,X2,Y1,Y2,
     E           Z1,Z2,LT,LF,50,50,ID,IDXA,IDXB)
       STOP
       END
       SUBROUTINE SUB(A1,A2,A3,B1,B2,B3,C1,C2,C3,X1,X2,Y1,Y2,
     E           Z1,Z2,LT,LF,M,N,ID,IDXA,IDXB)
       REAL*8 A1(M),A2(M,N),A3(N),
     1        B1(M),B2(M,N),B3(N),
     2        C1(M),C2(M,N),C3(N),
     3        X1(M),X2(M,N),
     4        Y1(M),Y2(M,N),
     E        Z1(M),Z2(M,N)
       LOGICAL LT(M),LF(M)
       INTEGER IDXA(M),IDXB(N)
       COMMON /BLK/IC

       IX=1

       DO 110 K=1,N
         DO 10 I=1,M,IC
           IDXA(I)=I
           IF(IDXA(I).GE.25) THEN
             IDXA(I)=50-I+1
           ENDIF
           IDXB(I)=27-IDXA(I)
           IF(IDXA(I).GT.IDXB(I)) LT(I)=.TRUE.
           IF(.NOT.LT(I)) THEN
             IF(IDXB(I).GT.IDXA(I)) LF(I)=.FALSE.
           ENDIF
  10     CONTINUE


         DO 30 J=1,N,ID
           DO 20 I=1,M,IC
             A2(I,J)=B2(I,J)-C2(I,IDXA(J))
             IF(LT(I)) A2(I,J)=C2(I,IDXA(J))-B2(I,J)
  20       CONTINUE
           A1(J)=B1(J)-C1(IDXB(J))
           IF(.NOT.LT(J)) A1(J)=C1(IDXB(J))-B1(J)
  30     CONTINUE

         DO 50 J=1,N,2
           DO 40 I=1,M,IC
             X2(I,J)=Y2(I,J)-Z2(I,IDXA(J))
             IF(LF(I)) X2(I,J)=Z2(I,IDXA(J))-Y2(I,J)
  40       CONTINUE
           X1(J)=Y1(J)-Z1(IDXB(J))
           IF(.NOT.LF(J)) X1(J)=Z1(IDXB(J))-Y1(J)
  50     CONTINUE
         A3(K)=B3(K)-C3(K)
         IF(LT(K).AND.LF(K)) A3(IDXB(K))=A3(K)-C1(IDXA(K))+B1(K)
 110   CONTINUE
       PRINT *,A2,X2,A3,IDXA,IDXB
       RETURN
       END
