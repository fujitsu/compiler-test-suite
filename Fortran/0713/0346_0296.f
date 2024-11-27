      INTEGER*4 S1,S2,S3
      S1=5
      S2=2
      S3=3
      PRINT *, '*=*=*=*=*= CALL  SUBA1  =*=*=*=*=*'
      CALL SUBA1( S1,S2,S3 )
      PRINT *, '*=*=*=*=*= CALL  SUBA2  =*=*=*=*=*'
      CALL SUBA2( S1,S2,S3 )
      PRINT *, '*=*=*=*=*= CALL  SUBA3  =*=*=*=*=*'
      CALL SUBA3( S1,S2,S3 )
      PRINT *, '*=*=*=*=*= CALL  SUBA4  =*=*=*=*=*'
      CALL SUBA4( S1,S2,S3 )
      STOP
      END
      SUBROUTINE SUBA1( S1,S2,S3 )
      INTEGER*4 A(10),B(10),C(10),D(10)
      INTEGER*4 S1,S2,S3
      DATA A,B,C,D/10*5,10*4,10*3,10*2./
      PRINT *, '*=*=*=*=*= SUBA1 ***** ENTERED =*=*=*=*=*'

      DO 11 I=1,10
11     A(I)=(S1+B(I))+(S2+C(I))+(S3+D(I))
      PRINT *,'  SUBA1  TEST ITEM NO. 1      '
      PRINT *,A

      DO 21 I=1,10
21     A(I)=(-S1+B(I))+(-S2+C(I))+(-S3+D(I))
      PRINT *,'  SUBA1  TEST ITEM NO. 2      '
      PRINT *,A

      DO 31 I=1,10
31     A(I)=(-S1+(-B(I)))+(-S2+(-C(I)))+(-S3+(-D(I)))
      PRINT *,'  SUBA1  TEST ITEM NO. 3      '
      PRINT *,A

      DO 41 I=1,10
41     A(I)=( S1+(-B(I)))+( S2+(-C(I)))+( S3+(-D(I)))
      PRINT *,'  SUBA1  TEST ITEM NO. 4      '
      PRINT *,A
      RETURN
      END
      SUBROUTINE SUBA2( S1,S2,S3 )
      INTEGER*4 A(10),B(10),C(10),D(10)
      INTEGER*4 S1,S2,S3
      DATA A,B,C,D/10*5,10*4,10*3,10*2./
      PRINT *, '*=*=*=*=*= SUBA2 ***** ENTERED =*=*=*=*=*'

      DO 11 I=1,10
11     A(I)=(S1-B(I))-(S2-C(I))-(S3-D(I))
      PRINT *,'  SUBA2  TEST ITEM NO. 1      '
      PRINT *,A

      DO 21 I=1,10
21     A(I)=(-S1-B(I))-(-S2-C(I))-(-S3-D(I))
      PRINT *,'  SUBA2  TEST ITEM NO. 2      '
      PRINT *,A

      DO 31 I=1,10
31     A(I)=(-S1-(-B(I)))-(-S2-(-C(I)))-(-S3-(-D(I)))
      PRINT *,'  SUBA2  TEST ITEM NO. 3      '
      PRINT *,A

      DO 41 I=1,10
41     A(I)=( S1-(-B(I)))-( S2-(-C(I)))-( S3-(-D(I)))
      PRINT *,'  SUBA2  TEST ITEM NO. 4      '
      PRINT *,A
      RETURN
      END
      SUBROUTINE SUBA3( S1,S2,S3 )
      INTEGER*4 A(10),B(10),C(10),D(10)
      INTEGER*4 S1,S2,S3
      DATA A,B,C,D/10*1,10*1,10*1,10*1./
      PRINT *, '*=*=*=*=*= SUBA3 ***** ENTERED =*=*=*=*=*'

      DO 11 I=1,10
11     A(I)=(S1*B(I))*(S2*C(I))*(S3*D(I))
      PRINT *,'  SUBA3  TEST ITEM NO. 1      '
      PRINT *,A

      DO 21 I=1,10
21     A(I)=(-S1*B(I))*(-S2*C(I))*(-S3*D(I))
      PRINT *,'  SUBA3  TEST ITEM NO. 2      '
      PRINT *,A

      DO 30 I=1,10
30     A(I)=(-S1*(-B(I)))*(-S2*(-C(I)))*(-S3*(-D(I)))
      PRINT *,'  SUBA3  TEST ITEM NO. 3      '
      PRINT *,A

      DO 40 I=1,10
40     A(I)=( S1*(-B(I)))*( S2*(-C(I)))*( S3*(-D(I)))
      PRINT *,'  SUBA3  TEST ITEM NO. 4      '
      PRINT *,A
      RETURN
      END
      SUBROUTINE SUBA4( S1,S2,S3 )
      INTEGER*4 A(10),B(10),C(10),D(10)
      INTEGER*4 S1,S2,S3
      DATA A,B,C,D/10*5,10*4,10*3,10*2./
      PRINT *, '***======= SUBA4 ========== ENTERED =======***'

      DO 10 I=1,10
10     A(I)=(S1/B(I))*(S2/C(I))*(S3/D(I))
      PRINT *,'  SUBA4  TEST ITEM NO. 1     '
      PRINT *,A

      DO 20 I=1,10
20     A(I)=(-S1/B(I))*(-S2/C(I))*(-S3/D(I))
      PRINT *,'  SUBA4  TEST ITEM NO. 2     '
      PRINT *,A

      DO 30 I=1,10
30     A(I)=(-S1/(-B(I)))*(-S2/(-C(I)))*(-S3/(-D(I)))
      PRINT *,'  SUBA4  TEST ITEM NO. 3     '
      PRINT *,A

      DO 40 I=1,10
40     A(I)=( S1/(-B(I)))*( S2/(-C(I)))*( S3/(-D(I)))
      PRINT *,'  SUBA4  TEST ITEM NO. 4     '
      PRINT *,A
      RETURN
      END
