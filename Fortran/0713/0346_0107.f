      LOGICAL    L1(10),L2(10),L3(10),L4(10),L5(10)
      LOGICAL    L6(10),L7(10),L8(10),L9(10),L0(10)
      DATA       L1/5*.TRUE.,5*.FALSE./,L2/5*.TRUE.,5*.FALSE./
      DATA       L3/5*.TRUE.,5*.FALSE./,L4/5*.TRUE.,5*.FALSE./
      DATA       L5/5*.TRUE.,5*.FALSE./,L6/5*.TRUE.,5*.FALSE./
      DATA       L7/5*.TRUE.,5*.FALSE./,L8/5*.TRUE.,5*.FALSE./
      DATA       L9/5*.TRUE.,5*.FALSE./,L0/5*.TRUE.,5*.FALSE./
      DIMENSION  A(10,20),B(10,10),C(10,10)
      DATA       A,B,C,N/200*1.0,100*2.0,100*3.0,10/
      DO 5 J=1,10
        DO 5 I=1,N
          IF( L1(I) ) A(I,J+0) = B(I,J) + C(I,J)
          IF( L2(I) ) A(I,J+1) = B(I,J) * C(I,J)
          IF( L3(I) ) A(I,J+2) = B(I,J) / C(I,J)
          IF( L4(I) ) A(I,J+3) = B(I,J) - C(I,J)
          IF( L5(I) ) A(I,J+4) = B(I,J) + 2.0
          IF( L6(I) ) A(I,J+5) = B(I,J) * 2.0
          IF( L7(I) ) A(I,J+6) = B(I,J) / 2.0
          IF( L8(I) ) A(I,J+7) = B(I,J) - 2.0
          IF( L9(I) ) A(I,J+8) = B(I,J) + B(I,J)
          IF( L0(I) ) A(I,J+9) = B(I,J) * B(I,J)
    5 CONTINUE
      WRITE(6,*) A
      STOP
      END
