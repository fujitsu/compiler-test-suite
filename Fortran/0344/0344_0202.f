      INTEGER I401(20)/3,6,21,11,1,16,2,2,21,10,0,0,0,0,0,0,0,0,0,0/
      INTEGER I403(10)/10*0/
      INTEGER I402(20)/20*1/
      K = 1
      DO 5 I=1,10
        M = I + 1
    5   I403(I) = I401(I) - M
C
      WRITE(6,*) I403
      DO 10 I=1,10
      I401(I) = I401(I) - M
        DO 20 J=1,I403(I)
          I402(J) = J + K + I401(J)
   20   CONTINUE
        K = K + I401(I)
   10 CONTINUE
      WRITE(6,*) I402
      STOP
      END
