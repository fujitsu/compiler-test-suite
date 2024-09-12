      INTEGER     MDIM(10,10,10),NDIM(10,10,10)
      REAL        A(5,5,5,5,5,5,5),B(5,5,5,5,5,5,5),C(5,5,5,5,5,5,5)
      REAL*8      OP(10,10,10),PQ(10,10,10),QR(10,10,10)
      REAL*8      RS(10,10,10),ST(10,10,10),TU(10,10,10)
      COMPLEX*8   AB(5,5,5,5),BC(5,5,5,5),CD(5,5,5,5)
      COMPLEX*16  DE(10,10,10),EF(10,10,10),FG(10,10,10)
      COMPLEX*16  GH(10,10,10),HI(10,10,10),HA(10,10,10)
      EQUIVALENCE (BC(1,2,3,4),CD(2,3,4,5))
      DIMENSION  O(100),P(100),Q(100),R(100),S(100),T(100),
     *           U(100,100),V(100,100),W(100,100),
     *           X(100,100),Y(100,100),Z(100)
      DATA       NDIM/1000*10/,B/78125*111.1/,C/78125*111.1/,
     *           PQ/1000*1234./,QR/1000*2345./,ST/1000*2203./,
     *           TU/1000*3653./,CD/625*(97.0,2.0)/,EF/1000*(5.8,3.0)/,
     *           FG/1000*(3.5,-1.4)/,HI/1000*(1.0d0,-3.24d0)/,
     *           HA/1000*(13.2d0,3.0d0)/
      DO 10 IA=1,5
      DO 10 IB=1,5
      DO 10 IC=1,5
      DO 10 ID=1,5
      DO 10 IE=1,5
      DO 10 IF=1,5
      DO 10 IG=1,5
       A(IG,IF,IE,ID,IC,IB,IA) = B(IG,IF,IE,ID,IC,IB,IA) +
     *                                C(IG,IF,IE,ID,IC,IB,IA)
   10 CONTINUE
      DO 20 JA=1,5
      DO 20 JB=1,5
      DO 20 JC=1,5
      DO 20 JD=1,5
       BC(JD,JC,JB,JA) = CD(JD,JC,JB,JA)
       AB(JD,JC,JB,JA) = BC(JD,JC,JB,JA) + CD(JD,JC,JB,JA)
   20 CONTINUE
      DO 30 KA=1,10
      DO 30 KB=1,10
      DO 30 KC=1,10
       MDIM(KC,KB,KA) = NDIM(KC,KB,KA) + 15
       MDIM(KC,KB,KA) = MDIM(KC,KB,KA) * NDIM(KC,KB,KA)
       OP(KC,KB,KA)   = PQ(KC,KB,KA) * QR(KC,KB,KA)
       RS(KC,KB,KA)   = ST(KC,KB,KA) + TU(KC,KB,KA)
       DE(KC,KB,KA)   = EF(KC,KB,KA) + FG(KC,KB,KA)
       GH(KC,KB,KA)   = HI(KC,KB,KA) + HA(KC,KB,KA)
   30 CONTINUE
      DO 40 LA=1,5
      DO 40 LB=1,5
      DO 40 LC=1,5
       DE(LC,LB,LA)       = DE(LC,LB,LA) + EF(LC,LB,LA) + FG(LC,LB,LA)
       RS(LC+1,LB,LA)     = RS(LC,LB,LA) + TU(LC,LB,LA)
       OP(LC+4,LB+3,LA+3) = OP(LC+3,LB+3,LA+3) + PQ(LC+3,LB+3,LA+3)
       GH(LC,LB,LA)       = GH(LC,LB,LA) + HI(LC,LB,LA)
       AB(LC,LB,LA,1)     = BC(LC,LB,LA,1) + CD(LC,LB,LA,1)
       NDIM(LC,LB,LA)     = MDIM(LC,LB,LA) + NDIM(LC,LB,LA)
   40 CONTINUE
      L = 100
      M = 100
      CALL LOOP(O,P,Q,R,S,T,U,V,W,X,Y,Z,L,M)
      DO 50 MA=1,10
      DO 50 MB=1,10
      DO 50 MC=1,10
       OP(MC,MC,MC) = PQ(MC,MC,MC) + QR(MC,MC,MC)
   50 CONTINUE
      DO 60 NA=1,10
      DO 60 NB=1,10
      DO 60 NC=1,10
       OP(NA,NA,NB) = PQ(NA,NA,NC) + QR(NA,NA,NA)
   60 CONTINUE
      WRITE(6,*) '** PROGRAM  **'
      WRITE(6,*) '  INTEGER    ==> ',MDIM(10,10,10)
      WRITE(6,*) '  REAL       ==> ',A(5,5,5,5,5,5,5)
      WRITE(6,*) '  REAL*8     ==> ',OP(10,10,10)
      WRITE(6,*) '  REAL*8     ==> ',RS(10,10,10)
      WRITE(6,*) '  COMPLEX*8  ==> ',AB(5,5,5,5)
      WRITE(6,*) '  COMPLEX*16 ==> ',DE(10,10,10)
      WRITE(6,*) '  COMPLEX*16 ==> ',(((GH(I,J,K),I=6,10),J=6,10),
     1              K=6,10)
      STOP
      END
      SUBROUTINE LOOP(A,B,C,D,E,F,U,V,W,X,Y,Z,L,M)
      DIMENSION  A(L),B(L),C(L),D(L),E(L),F(L)
      DIMENSION  U(L,M),V(L,M),W(L,M),X(L,M),Y(L,M),Z(M)
      DO 10 I=1,L
       B(I) = 5.2
       C(I) = 0.3
       E(I) = 7.5
       F(I) = 4.6
   10 CONTINUE
      DO 20 I=1,M
      DO 20 J=1,L
       V(J,I) = 1.2
       W(J,I) = 3.4
       Y(J,I) = 4.65
       Z(J) = 2345.6
   20 CONTINUE
      DO 30 I=1,L
       A(I) = B(I) + C(I)
   30 CONTINUE
      DO 40 I=1,L
       D(I) = E(I) * F(I)
   40 CONTINUE
      DO 50 I=1,M
      DO 50 J=1,L
       U(J,I) = V(J,I) * W(J,I)
   50 CONTINUE
      DO 60 I=1,M
      DO 60 J=1,L
       X(J,I) = Y(J,I) * Z(J)
   60 CONTINUE
      RETURN
      END
