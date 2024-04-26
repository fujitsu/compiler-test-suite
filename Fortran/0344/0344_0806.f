      REAL RA(515),RB(515),RC(515)
      CALL INIT(RA,RB,RC,515)
      DO 100 I = 2 , 515
         RA(I) = RA(I-1) * RB(I) +RC(I)
  100 CONTINUE
C
      WRITE(6,999) RA
  999 FORMAT(1H ,4F16.8)
      END
C
      SUBROUTINE INIT(RA,RB,RC,N)
      REAL RA(N),RB(N),RC(N)
      DO 100 I=1,N
      RA(I)=0
      RB(I)=1
  100 RC(I)=1
      RETURN
      END
