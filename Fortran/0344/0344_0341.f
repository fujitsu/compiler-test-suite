      PROGRAM MAIN
      DIMENSION A(10,10),B(10,10),C(10,10),D(10,10)
      
      I=10
      CALL MATCH(A,B,C,D,I)
      CALL MATMUL(A,B,C,10,10,10,10,10,10,10,10,10)
      STOP
      END
C
      SUBROUTINE MATMUL(A,B,C,MX1,MX2,NX1,NX2,MN1,MN2,M,N,MM)
      DIMENSION A(MX1,MX2),B(NX1,NX2),C(MN1,MN2)
      DO 10 I=1,M
        DO 10 J=1,N
          C(I,J)=0.
          DO 10 K=1,MM
            C(I,J)=C(I,J)+A(I,K)*B(K,J)
   10 CONTINUE
      WRITE(6,1) C
    1 FORMAT(1H,6E12.5)
      RETURN
      END
C
      SUBROUTINE MATCH(A,B,C,D,MX1)
      DIMENSION A(MX1,MX1),B(MX1,MX1),C(MX1,MX1),D(MX1,MX1)
      DO 20 I=1,MX1
        DO 20 J=1,MX1
            A(I,J)=0.
            B(I,J)=0.
            C(I,J)=0.
            D(I,J)=0.
   20 CONTINUE
      RETURN
      END
