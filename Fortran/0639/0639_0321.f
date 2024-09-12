      INTEGER*4 IA(10),IB(10),IC(10),IS
      REAL*4    A(10),B(10),C(10)   ,S
      REAL*8    DA(10),DB(10),DC(10),DS
      DATA IA/10*1/,IB/10*2/,IC/10*3/
      DATA A/10*1.0/,B/10*2.0/,C/10*3.0/
      DATA DA/10*1.0/,DB/10*2.0/,DC/10*3.0/
      DATA N/10/

      DO 10 I=2,N
        DS    = DA(I)   + DB(I)
        DB(I) = DB(I-1) + DS
        DC(I) = DB(I)   + DS
        IS    = IA(I)   + IB(I)
        IB(I) = IB(I-1) + IS
        IC(I) = IB(I)   + IS
        S     = A(I)    + B(I)
        B(I)  = B(I-1)  + S
        C(I)  = B(I)    + S
  10  CONTINUE

      PRINT *,B,C,DB,DC,IB,IC
      STOP
      END
