      DIMENSION A(10),B(10),C(10),D(200),E(200),F(200)
      DIMENSION Q(300),X(50),Y(10),Z(10),Y1(10),Z1(10)
      DIMENSION O(500),P(256)
      DATA A/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      DATA B/11,12,13,14,15,16,17,18,19,20/
      DATA Z/ 1, 1, 1, 1, 1, 1, 1, 1, 1,1/
      DATA Z1/ 1, 1, 1, 1, 1, 1, 1, 1, 1,1/
      DO 20 I=1,10
        C(I)=A(I)+B(I)/3.0
20    CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      DO 22 J=1,200
        D(J)=0.0
        E(J)=1.0
        F(J)=2.0
22    CONTINUE
      WRITE(6,*) D
      WRITE(6,*) E
      WRITE(6,*) F
      DO 23 K=1,300
        Q(K)=3
23    CONTINUE
      WRITE(6,*) Q
      DO 24 L=1,50
        X(L)=4.0
24    CONTINUE
      WRITE(6,*) X
      DO 25 M=1,10
        Y(M)=4.0+Z(M)
        Y1(M)=4.0+Z1(M)
25    CONTINUE
      WRITE(6,*) Y,Y1
      DO 26 I1=1,500
        O(I1)=1234.5
26    CONTINUE
      WRITE(6,*) O
      DO 27 I2=1,256
        P(I2)=256.0
27    CONTINUE
      WRITE(6,*) P
      STOP
      END
