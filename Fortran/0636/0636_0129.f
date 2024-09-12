      PARAMETER (N=10)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      DATA RC/5.0/
      DATA A1,A2,A3,A4,A5,A6,A7,A8,A9/90*0/
      DO 10 I=1,N
       A1(I)=I
       A2(I)=I+0.1
       A3(I)=I-0.1
       A4(I)=SQRT(REAL(I))
       IF(RC.LT.1.0) THEN
        A5(I)=A1(I)-9.9
        A6(I)=A2(I)*7.9
        A7(I)=A3(I)/4.2
       ENDIF
       A8(I)=A1(I)+A2(I)
       A9(I)=SQRT(A1(I)+A2(I))
   10 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9
      STOP
      END
