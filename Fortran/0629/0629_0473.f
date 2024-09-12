      INTEGER I401(100),I402(50),I403(50)/50*0/
      INTEGER I404(100)/100*0/
      EQUIVALENCE (I401(1),I402(1))
      EQUIVALENCE (I401(51),I403(1))
      DO 20 I=1,50
        I402(I) = IABS((50-I*2)+1)
        I403(I) = 9
   20 CONTINUE
      DO 30 J=1,30
      DO 40 I=1,I402(J)
        I404(I) = I401(I+10) + I
   40 CONTINUE
   30 CONTINUE
      WRITE(6,*) 'I = ',I
      WRITE(6,*) 'J = ',J
      WRITE(6,*) 'I404'
      WRITE(6,9) I404
    9 FORMAT(15I5)
      STOP
      END
