      IMPLICIT  REAL*8(A-H,O-Z)
      PARAMETER (NLOOP=10000)
      DIMENSION DU1(25),DU2(25),DU3(25)
      DIMENSION XIDT(20),RT(20),NROPS(20),LOOPS(20),MOPS(20),RPM(20)
      DIMENSION CKSUM(20),PRM(20)
      DIMENSION PIDT(20)
      INTEGER E,F
      COMMON /QA8/ X(1001), Y(1001), Z(1001), U(500),
     . PX(15,100),CX(15,100),U1(5,22,2),U2(5,22,2),U3(5,22,2),
     . B(64,8),BNK1(5), C(64,8),BNK2(5), P(4,512),BNK3(5), H(64,8),
     .        BNK4(5), E (192),BNK5(5), F(192),
     . EX(67),DUMDUM(160),RH(67), DEX(67), VX(150), XX(150), GRD(150)
     . ,DUM(8000)

      DO 2002 JAX=1,NLOOP
      Q = 0.0
      Z = 1.0
      X = 1.0
      R=5.0
      DO 2 K=R,996,R
          Q = Q + Z(K  )*X(K  ) + Z(K+1)*X(K+1)
     .          + Z(K+2)*X(K+2) + Z(K+3)*X(K+3)
     .         + Z(K+4)*X(K+4)
   2  CONTINUE
2002  CONTINUE
      print *,Q
      end
