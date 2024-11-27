      INTEGER IA(10),IB(10)
      REAL     A(11),B(11),C(11),X(11),Y(11),Z(11),W(11),D(11)
      DATA     IA/10,9,8,7,6,5,4,3,2,1/
      DATA     IB/1,2,3,4,5,6,7,8,9,10/
      DATA     A,B,C,D/11*1.0,11*0.5,11*3.0,11*1.0/
      DATA     X,Y  /11*2.0,11*1.0/
      DATA     Z,W  /11*0.5,11*2.0/

      DO 10 I = 1 , 10
        IDX = IA(I)
        NDX = IB(I)
        X(I) = A(IDX) + D(I)
        Y(I) = B(IDX) - D(I)
        Z(I) = C(NDX) + D(I)
        W(I) = A(NDX) - D(I)
   10 CONTINUE
      PRINT  *,X,Y,Z,W
      STOP
      END
