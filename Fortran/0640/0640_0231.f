      REAL*4      RA2(100),RA1(100)
      INTEGER     INDC/1/
      DATA        RA2/100*2/

      K=0
      RA1=0
      DO 2020 J=1,10
      DO 2020 I=1,10
          IF( I .LE. 5 ) THEN
            INDC=INDC+1
            RA1(INDC) = I
          ENDIF
          RA2(I+1)=RA2(I)
2020  CONTINUE

      WRITE(6,*) ' RA2=',RA2,' RA1=',RA1,INDC,K
      STOP
      END
