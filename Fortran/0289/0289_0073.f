      INTEGER*4 S1,S2,S3
      S1=5
      S2=2
      S3=3
      CALL SUBA3( S1,S2,S3 )
      STOP
      END
      SUBROUTINE SUBA3( S1,S2,S3 )
      INTEGER*4 A(10),B(10),C(10),D(10)
      INTEGER*4 S1,S2,S3
      DATA A,B,C,D/10*1,10*1,10*1,10*1./
      DO 30 I=1,10
30     A(I)=(-S1*(-B(I)))*(-S2*(-C(I)))*(-S3*(-D(I)))
      PRINT *,A
      RETURN
      END
