      IMPLICIT  REAL*8(A-H,O-Z)
      PARAMETER (NLOOP=10000)
      COMMON /QA8/ X(1001), Y(1001), Z(1001), U(500)


C
      x=1.0
      y=2.0
      z=3.0
      Q = 0.0
      R = 0.0
      DO 2002 JAX=1,NLOOP
      Q = Q+1
      R = R+1
      DO 2 K=1,996,5
          Q = Q + Z(K  )*X(K  ) + Z(K+1)*X(K+1)
     .          + Z(K+2)*X(K+2) + Z(K+3)*X(K+3)
     .         + Z(K+4)*X(K+4)
   2  CONTINUE
      DO 3 K=1,997,4
          R = R + Y(K  )*X(K  ) + Y(K+1)*X(K+1)
     .          + Y(K+2)*X(K+2) + Y(K+3)*X(K+3)
   3  CONTINUE
      DO 4 K=1,998,3
          Q = Q + Y(K  )*X(K  ) + Y(K+1)*X(K+1)
     .          + Y(K+2)*X(K+2)
   4  CONTINUE
      DO 5 K=1,999,2
          R = R + Y(K  )*X(K  ) + Y(K+1)*X(K+1)
   5  CONTINUE
      DO 6 K=1,1000,1
          Q = Q + Y(K  )*X(K  )
   6  CONTINUE
2002  CONTINUE
      print *,q,r
      END
