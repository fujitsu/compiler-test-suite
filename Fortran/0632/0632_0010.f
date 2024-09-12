      INTEGER     A(10,8,8,8,10),B(10,8,8,8,10)
      INTEGER     C(10,8,8,8,10),D(10,8,8,8,10)
      REAL*8      H(10,8,8,8,10),O(10,8,8,8,10)
      REAL*8      P(10,8,8,8,10),Q(10,8,8,8,10)
      COMPLEX     V(10,8,8,8,10),W(10,8,8,8,10)
      COMPLEX     X(10,8,8,8,10),Y(10,8,8,8,10)
      COMPLEX     CONDC/(1.0,1.0)/
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
      DO 10 I1=1,9
        IF(7.0.GT.I3*3.0) THEN
        D(I1,I2,I3,I4,I5)=A(I1,I2+1,I3+1,I4+1,I5+1)+C(I1,I2,I3,I4,I5)
        A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
        D(I1,I2,I3,I4,I5)=A(I1,I2+1,I3+1,I4+1,I5+1)+C(I1,I2,I3,I4,I5)
        ELSE
        D(I1,I2,I3,I4,I5)=A(I1,I2+1,I3+1,I4+1,I5+1)+C(I1,I2,I3,I4,I5)
        A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
        D(I1,I2,I3,I4,I5)=A(I1,I2+1,I3+1,I4+1,I5+1)+C(I1,I2,I3,I4,I5)
        ENDIF
   10 CONTINUE
      DO 20 I5=1,9
      DO 20 I4=1,7
      DO 20 I3=1,7
      DO 20 I2=1,7
      DO 20 I1=1,9
        IF(H(I1,I2,I3,I4,I5).GT.P(I1,I2,I3,I4,I5)) THEN
        D(I1,I2,I3,I4,I5)=A(I1+1,I2+1,I3+1,I4,I5)+C(I1,I2,I3,I4,I5)
        A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
        ELSE
        D(I1,I2,I3,I4,I5)=A(I1+1,I2+1,I3,I4+1,I5)+C(I1,I2,I3,I4,I5)
        ENDIF
   20 CONTINUE
      DO 30 I5=1,8
      DO 30 I4=1,6
      DO 30 I3=1,6
      DO 30 I2=1,6
      DO 30 I1=1,8
        IF(H(I1,I2,I3,I4,I5).GT.P(I1,I2,I3,I4,I5)) THEN
        Q(I1,I2,I3,I4,I5)=SQRT(H(I1,I2+2,I3,I4,I5+2))+P(I1,I2,I3,I4,I5)
        ELSE
        H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+EXP(P(I1,I2,I3,I4,I5))
        Q(I1,I2,I3,I4,I5)=SIN(H(I1,I2+2,I3,I4,I5+2))+P(I1,I2,I3,I4,I5)
        ENDIF
   30 CONTINUE
      DO 40 I5=1,9
      DO 40 I4=1,7
      DO 40 I3=1,7
      DO 40 I2=1,7
      DO 40 I1=1,9
        IF(IMAG(CONDC).GT.REAL(I3))THEN
        IF(IMAG(CONDC).GT.REAL(I2))THEN
        IF(IMAG(CONDC).GT.REAL(I1))THEN
        IF(IMAG(CONDC).GT.REAL(I4))THEN
        Q(I1,I2,I3,I4,I5)=H(I1,I2+1,I3+1,I4+1,I5)+P(I1,I2,I3,I4,I5)
        ELSE
        H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
        ENDIF
        ELSE
        Q(I1,I2,I3,I4,I5)=H(I1,I2,I3+1,I4,I5)+P(I1,I2,I3,I4,I5)
        ENDIF
        ENDIF
        ENDIF
   40 CONTINUE
      DO 50 I5=1,8
      DO 50 I4=1,6
      DO 50 I3=1,6
      DO 50 I2=1,6
      DO 50 I1=1,8
        IF(10-I1+I2.GT.5)THEN
        Y(I1,I2,I3,I4,I5)=V(I1,I2+2,I3+2,I4+2,I5+2)+W(I1,I2,I3,I4,I5)
        V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
        Y(I1,I2,I3,I4,I5)=V(I1,I2+2,I3+2,I4+2,I5+2)+W(I1,I2,I3,I4,I5)
        ELSE
        Y(I1,I2,I3,I4,I5)=V(I1,I2+2,I3+2,I4+2,I5+2)+W(I1,I2,I3,I4,I5)
        V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
        Y(I1,I2,I3,I4,I5)=V(I1,I2+2,I3+2,I4+2,I5+2)+W(I1,I2,I3,I4,I5)
        ENDIF
   50 CONTINUE
      DO 60 I5=1,8
      DO 60 I4=1,6
      DO 60 I3=1,6
      DO 60 I2=1,6
      DO 60 I1=1,8
        IF(10-I1+I2.GT.5)THEN
        Y(I1,I2,I3,I4,I5)=SIN(V(I1,I2,I3,I4,I5))+W(I1,I2,I3,I4,I5)
        V(I1,I2,I3,I4,I5)=SIN(W(I1,I2,I3,I4,I5))+X(I1,I2,I3,I4,I5)
        Y(I1,I2,I3,I4,I5)=SIN(SQRT(V(I1+2,I2,I3+2,I4+2,I5+2)))
     *                    +COS(W(I1,I2,I3,I4,I5))
        ENDIF
   60 CONTINUE
      WRITE(61,*)(((((A(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(62,*)(((((B(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(63,*)(((((C(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(64,*)(((((D(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(65,*)(((((H(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(66,*)(((((O(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(67,*)(((((P(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(68,*)(((((Q(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(69,*)(((((V(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(70,*)(((((W(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(71,*)(((((X(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      WRITE(72,*)(((((Y(I1,I2,I3,I4,I5),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
     *                                ,I5=1,10,3)
      call chkx
      print *,'pass'
      END
      subroutine chkx
      INTEGER     A(4*3*3*3*4),B(4*3*3*3*4)
      INTEGER     C(4*3*3*3*4),D(4*3*3*3*4)
      REAL*8      H(4*3*3*3*4),O(4*3*3*3*4)
      REAL*8      P(4*3*3*3*4),Q(4*3*3*3*4)
      COMPLEX     V(4*3*3*3*4),W(4*3*3*3*4)
      COMPLEX     X(4*3*3*3*4),Y(4*3*3*3*4)
      do i=61,72
         rewind i
      end do
      read(61,*) A;if (sum(A)/=3348)print *,'error-1'
      read(62,*) B;if (sum(B)/=1728)print *,'error-2'
      read(63,*) C;if (sum(C)/=1728)print *,'error-3'
      read(64,*) D;if (sum(D)/=3186)print *,'error-4'
      read(65,*) H
      if (abs(sum(H)-3736.974982736971_8)>0.1) print *,'error-5'
      read(66,*) O
      if (abs(sum(O)-1728._8)>0.1) print *,'error-6'
      read(67,*) P
      if (abs(sum(P)-1728._8)>0.1) print *,'error-7'
      read(68,*) Q
      if (abs(sum(Q)-1826.611705157245_8)>0.1) print *,'error-8'
      read(69,*) V
      if (abs(sum(V)-2361.91577_8)>0.1) print *,'error-9'
      read(70,*) W
      if (abs(sum(W)-2376._8)>0.1) print *,'error-10'
      read(71,*) X
      if (abs(sum(X)-1728._8)>0.1) print *,'error-11'
      read(72,*) Y
      if (abs(sum(Y)-1734.37109_8)>0.1) print *,'error-12'
      end
