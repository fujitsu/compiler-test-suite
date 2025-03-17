      LOGICAL    L1(10),L2(10),L3(10),L4(10),L5(10)
      LOGICAL    L6(10),L7(10),L8(10),L9(10),L0(10)
      DATA       L1/5*.TRUE.,5*.FALSE./,L2/5*.TRUE.,5*.FALSE./
      DATA       L3/5*.TRUE.,5*.FALSE./,L4/5*.TRUE.,5*.FALSE./
      DATA       L5/5*.TRUE.,5*.FALSE./,L6/5*.TRUE.,5*.FALSE./
      DATA       L7/5*.TRUE.,5*.FALSE./,L8/5*.TRUE.,5*.FALSE./
      DATA       L9/5*.TRUE.,5*.FALSE./,L0/5*.TRUE.,5*.FALSE./
      DIMENSION  A1(10),A2(10),A3(10),A4(10),A5(10)
      DIMENSION  A6(10),A7(10),A8(10),A9(10),A0(10)
      DIMENSION  AA(10),AB(10)
      DATA       A1,A2,A3,A4,A5/10*1.0,10*2.0,10*3.0,10*4.0,10*5.0/
      DATA       A6,A7,A8,A9,A0/10*6.0,10*7.0,10*8.0,10*9.0,10*0.0/
      DATA       AA,AB/10*11.0,10*12.0/
      DATA       N/10/
      DO 5 J=1,10
        DO 5 I=1,N
          IF( L1(I) ) A1(I) = AA(I) + AB(I)
          IF( L2(I) ) A2(I) = AA(I) * AB(I)
          IF( L3(I) ) A3(I) = AA(I) / AB(I)
          IF( L4(I) ) A4(I) = AA(I) - AB(I)
          IF( L5(I) ) A5(I) = AA(I) + A1(I)
          IF( L6(I) ) A6(I) = AA(I) * A2(I)
          IF( L7(I) ) A7(I) = AA(I) / A3(I)
          IF( L8(I) ) A8(I) = AA(I) - A4(I)
          IF( L9(I) ) A9(I) = AA(I) + 2.0
          IF( L0(I) ) A0(I) = AA(I) * 2.0
    5 CONTINUE
      WRITE(6,*) A1,A2,A3,A4,A5,A6,A7,A8,A9,A0
      STOP
      END
