      INTEGER     A(10,8,8,10),B(10,8,8,10)
      INTEGER     C(10,8,8,10),D(10,8,8,10)
      REAL        H(10,8,8,10),O(10,8,8,10)
      REAL        P(10,8,8,10),Q(10,8,8,10)
      COMPLEX*16  V(10,8,8,10),W(10,8,8,10)
      COMPLEX*16  X(10,8,8,10),Y(10,8,8,10)
      DO 15 I1=1,10
      DO 15 I2=1,8
      DO 15 I3=1,8
      DO 15 I4=1,10
        A(I4,I3,I2,I1)=I1
        B(I4,I3,I2,I1)=I2
        C(I4,I3,I2,I1)=I3
        D(I4,I3,I2,I1)=I4
        H(I4,I3,I2,I1)=I1
        O(I4,I3,I2,I1)=I4
        P(I4,I3,I2,I1)=I3
        Q(I4,I3,I2,I1)=I2
        V(I4,I3,I2,I1)=I1
        W(I4,I3,I2,I1)=I1
        X(I4,I3,I2,I1)=I4
        Y(I4,I3,I2,I1)=I3
   15 CONTINUE
      DO 10 I4=1,9
      DO 10 I3=1,7
      DO 10 I2=2,7
      DO 10 I1=1,9
        D(I1,I2,I3,I4)=A(I1+1,I2-1,I3,I4)+C(I1,I2,I3,I4)
        A(I1,I2,I3,I4)=B(I1,I2,I3,I4)+C(I1,I2,I3,I4)
        D(I1,I2,I3,I4)=A(I1+1,I2-1,I3,I4)+C(I1,I2,I3,I4)
   10 CONTINUE
      DO 20 I4=2,9
      DO 20 I3=1,7
      DO 20 I2=1,7
      DO 20 I1=1,9
        D(I1,I2,I3,I4)=A(I1,I2,I3+1,I4-1)+C(I1,I2,I3,I4)
        A(I1,I2,I3,I4)=B(I1,I2,I3,I4)+C(I1,I2,I3,I4)
        D(I1,I2,I3,I4)=A(I1,I2,I3+1,I4-1)+C(I1,I2,I3,I4)
   20 CONTINUE
      DO 30 I4=2,9
      DO 30 I3=1,7
      DO 30 I2=1,7
      DO 30 I1=1,9
        Q(I1,I2,I3,I4)=H(I1+1,I2,I3,I4-1)+P(I1,I2,I3,I4)
        H(I1,I2,I3,I4)=O(I1,I2,I3,I4)+P(I1,I2,I3,I4)
        Q(I1,I2,I3,I4)=H(I1+1,I2,I3,I4-1)+P(I1,I2,I3,I4)
   30 CONTINUE
      DO 40 I4=1,9
      DO 40 I3=1,7
      DO 40 I2=1,7
      DO 40 I1=2,9
        Q(I1,I2,I3,I4)=H(I1-1,I2,I3,I4+1)+P(I1,I2,I3,I4)
        H(I1,I2,I3,I4)=O(I1,I2,I3,I4)+P(I1,I2,I3,I4)
        Q(I1,I2,I3,I4)=H(I1-1,I2,I3,I4+1)+P(I1,I2,I3,I4)
   40 CONTINUE
      DO 50 I4=1,8
      DO 50 I3=2,7
      DO 50 I2=3,7
      DO 50 I1=1,9
        Y(I1,I2,I3,I4)=V(I1,I2-2,I3-1,I4+2)+W(I1,I2,I3,I4)
        V(I1,I2,I3,I4)=W(I1,I2,I3,I4)+X(I1,I2,I3,I4)
        Y(I1,I2,I3,I4)=V(I1,I2-1,I3,I4+2)+W(I1,I2,I3,I4)
   50 CONTINUE
      DO 60 I4=1,9
      DO 60 I3=2,7
      DO 60 I2=2,7
      DO 60 I1=1,9
        Y(I1,I2,I3,I4)=V(I1+1,I2-1,I3-1,I4)+W(I1,I2,I3,I4)
        V(I1,I2,I3,I4)=W(I1,I2,I3,I4)+X(I1,I2,I3,I4)
        Y(I1,I2,I3,I4)=V(I1+1,I2-1,I3-1,I4)+W(I1,I2,I3,I4)
   60 CONTINUE
      WRITE(6,*)((((A(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((B(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((C(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((D(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((H(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((O(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((P(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((Q(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((V(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((W(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((X(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((Y(I1,I2,I3,I4),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      END
