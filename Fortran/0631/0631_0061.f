      INTEGER     A(10,8,8,8,10)
      REAL*8      H(10,8,8,8,10)
      COMPLEX     V(10,8,8,8,10)
      REAL        CONDR
      CONDR=1.0
      DO 15 I1=1,10
      DO 15 I2=1,8
      DO 15 I3=1,8
      DO 15 I4=1,8
      DO 15 I5=1,10
        A(I5,I4,I3,I2,I1)=I1
        H(I5,I4,I3,I2,I1)=A(I5,I4,I3,I2,I1)
        V(I5,I4,I3,I2,I1)=I5+I4+I3+I2+I1
   15 CONTINUE
      CALL SUB1(A,H,V,CONDR)
      END
      SUBROUTINE SUB1(A,H,V,CONDR)
      INTEGER     A(10,8,8,8,10),B(10,8,8,8,10)
      INTEGER     C(10,8,8,8,10),D(10,8,8,8,10)
      REAL*8      H(10,8,8,8,10),O(10,8,8,8,10)
      REAL*8      P(10,8,8,8,10),Q(10,8,8,8,10)
      COMPLEX     V(10,8,8,8,10),W(10,8,8,8,10)
      COMPLEX     X(10,8,8,8,10),Y(10,8,8,8,10)
      DO 15 I1=1,10
      DO 15 I2=1,8
      DO 15 I3=1,8
      DO 15 I4=1,8
      DO 15 I5=1,10
        A(I5,I4,I3,I2,I1)=I1
        B(I5,I4,I3,I2,I1)=I2
        C(I5,I4,I3,I2,I1)=I3
        D(I5,I4,I3,I2,I1)=I4
        H(I5,I4,I3,I2,I1)=I5
        O(I5,I4,I3,I2,I1)=I4
        P(I5,I4,I3,I2,I1)=I3
        Q(I5,I4,I3,I2,I1)=I2
        V(I5,I4,I3,I2,I1)=I1
        W(I5,I4,I3,I2,I1)=I5
        X(I5,I4,I3,I2,I1)=I4
        Y(I5,I4,I3,I2,I1)=I3
   15 CONTINUE
      DO 10 I5=1,9
      DO 10 I4=1,7
      DO 10 I3=1,7
      DO 10 I2=1,7
      DO 10 I1=2,9
        IF(A(I1,I4,I3,I2,I5)-5) 11,12,13
   12   A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+ABS(C(I1,I2,I3,I4,I5))
        D(I1,I2,I3,I4,I5)=MOD(A(I1-1,I2,I3,I4,I5),C(I1,I2,I3,I4,I5))
   11   A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
        D(I1,I2,I3,I4,I5)=MAX(A(I1-1,I2,I3,I4,I5),C(I1,I2,I3,I4,I5))
   13   A(I1,I2,I3,I4,I5)=MAX(B(I1,I2,I3,I4,I5),C(I1,I2,I3,I4,I5))
        D(I1,I2,I3,I4,I5)=A(I1-1,I2,I3,I4,I5)/C(I1,I2,I3,I4,I5)
   10 CONTINUE
      DO 20 I5=1,9
      DO 20 I4=1,7
      DO 20 I3=1,7
      DO 20 I2=2,7
      DO 20 I1=1,9
        IF(I5-3) 20,22,23
   23   A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
        D(I1,I2,I3,I4,I5)=A(I1,I2-1,I3,I4,I5)+C(I1,I2,I3,I4,I5)
   22   A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
        D(I1,I2,I3,I4,I5)=A(I1,I2-1,I3,I4,I5)+C(I1,I2,I3,I4,I5)
   20 CONTINUE
      DO 30 I5=1,9
      DO 30 I4=1,7
      DO 30 I3=2,7
      DO 30 I2=1,7
      DO 30 I1=1,9
        IF(INT(CONDR)) 30,32,33
   32   H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
        Q(I1,I2,I3,I4,I5)=H(I1,I2,I3-1,I4,I5)+P(I1,I2,I3,I4,I5)
   33   H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
        Q(I1,I2,I3,I4,I5)=H(I1,I2,I3-1,I4,I5)+P(I1,I2,I3,I4,I5)
   30 CONTINUE
      DO 40 I5=1,9
      DO 40 I4=2,7
      DO 40 I3=1,7
      DO 40 I2=1,7
      DO 40 I1=1,9
        IF(I3-2) 41,42,43
   41   H(I1,I2,I3,I4,I5)=MAX(O(I1,I2,I3,I4,I5),P(I1,I2,I3,I4,I5))
   42   Q(I1,I2,I3,I4,I5)=MAX(H(I1,I2,I3,I4-1,I5),P(I1,I2,I3,I4,I5))
   43   IF(I2-5) 44,45,46
   44   H(I1,I2,I3,I4,I5)=MIN(O(I1,I2,I3,I4,I5),P(I1,I2,I3,I4,I5))
   45   Q(I1,I2,I3,I4,I5)=MIN(H(I1,I2,I3,I4-1,I5),P(I1,I2,I3,I4,I5))
   46   IF(I5-2) 47,48,49
   47   H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
   48   Q(I1,I2,I3,I4,I5)=ABS(H(I1,I2,I3,I4-1,I5))+P(I1,I2,I3,I4,I5)
   49   Q(I1,I2,I3,I4,I5)=ABS(H(I1,I2,I3,I4-1,I5))+P(I1,I2,I3,I4,I5)
   40 CONTINUE
      DO 50 I5=2,9
      DO 50 I4=1,7
      DO 50 I3=1,7
      DO 50 I2=1,7
      DO 50 I1=1,9
        IF(I5-2) 51,52,52
   51   V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
   52   Y(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5-1)+W(I1,I2,I3,I4,I5)
   50 CONTINUE
      DO 60 I5=1,9
      DO 60 I4=1,7
      DO 60 I3=1,7
      DO 60 I2=1,7
      DO 60 I1=4,9
        IF(I5-2) 61,62,60
   61   V(I1,I2,I3,I4,I5)=SQRT(W(I1,I2,I3,I4,I5))+X(I1,I2,I3,I4,I5)
        Y(I1,I2,I3,I4,I5)=SQRT(V(I1-3,I2,I3,I4,I5))+W(I1,I2,I3,I4,I5)
   62   V(I1,I2,I3,I4,I5)=SQRT(W(I1,I2,I3,I4,I5))+X(I1,I2,I3,I4,I5)
        Y(I1,I2,I3,I4,I5)=LOG(V(I1-3,I2,I3,I4,I5))+W(I1,I2,I3,I4,I5)
   60 CONTINUE
      WRITE(6,*)(((((A(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((B(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((C(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((D(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((H(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((O(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((P(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((Q(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((V(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((W(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((X(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(6,*)(((((Y(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      END
