      REAL A(10),B(10),C(10),D(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA D/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
      DATA N,M,MM/1,10,1/
      DO 10 I=1,10,1
        DO 11 I1=I,10
11        A(I1)=A(I1)*I
        DO 12 I2=N*1,M,1
12        B(I2)=I+A(I2)
        DO 13 I3=M,1,N
13        C(I3)=A(I3)/B(I3)
        DO 14 I4=1,M,MM
14        D(I4)=D(I4)+A(I4)
   10 CONTINUE
      WRITE(6,1) A,B,C,D
 1    FORMAT(5F15.3)
      STOP
      END
