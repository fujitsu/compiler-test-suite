      PARAMETER (N=20)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      LOGICAL L(N)
      DATA L/10*.TRUE.,10*.FALSE./
      DO 10 I=1,N
       A1(I)=I+0.1
       A2(I)=I-0.1
       A3(I)=SQRT(REAL(I))
       A4(I)=10.0
       A5(I)=I*4.7
       IF(L(I)) THEN
        A5(I)=A4(I)-1.0
       ENDIF
       A6(I)=6.5
       A7(I)=A1(I)/A2(I)+0.9
       A8(I)=A3(I)-A4(I)
       A9(I)=A5(I)+A6(I)+A7(I)
       A1(I)=A9(I)*6.0
       A2(I)=SQRT(ABS(A8(I)))+0.7
       IF(L(I)) THEN
        A2(I)=0.0
       ENDIF
       A3(I)=A6(I)+A5(I)-9.54
       A4(I)=A9(I)/ABS(A7(I))
       A5(I)=A5(I)-0.1
       A6(I)=A1(I)+A2(I)
       A7(I)=A3(I)/ABS(A9(I))
       A8(I)=A1(I)*4.9
       A9(I)=A2(I)-9.4
   10 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9
      STOP
      END
