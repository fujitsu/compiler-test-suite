      PARAMETER (N=10)
      REAL*8 A0(N),A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),
     *       A9(N)
      DO 100 I=1,N
       A0(I)=I
       A1(I)=I+0.1
       A2(I)=SQRT(REAL(I))
       A3(I)=I*2.0
       A4(I)=REAL(I)-0.01
       A5(I)=I*0.3
       A6(I)=I+0.9
       A7(I)=1.0
       A8(I)=9.9
       A9(I)=I*0.4+0.3
       X=1.0
       DO 10 J=1,N
       IF(X.GT.10.0) A0(J)=0.0
   10  CONTINUE
       A9(I)=(A1(I)+A2(I))/2.0
       A8(I)=A0(I)
       A7(I)=A3(I)+A4(I)+A5(I)
       A6(I)=A3(I)-0.01
       A5(I)=A6(I)
       A4(I)=A7(I)+A8(I)
       A3(I)=(A9(I)+A0(I)+A1(I))/3.0
       A2(I)=A2(I)*2.5
       A1(I)=A9(I)/2.34
       A0(I)=A8(I)*0.5
       A0(I)=A7(I)-A0(I)
  100 CONTINUE
      PRINT *,A0,A1,A2,A3,A4,A5,A6,A7,A8,A9
      STOP
      END
