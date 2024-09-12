         INTEGER *4  IA(10)/10*10/
      DATA  N/0/
         INTEGER *4 IX00A
         DO 100 I=1,10,1
         IF (I.EQ.5)GO TO 100
      CONTINUE
      IA(I+N) =  100
  100 CONTINUE
      IA(5) =IA(5)-100
      WRITE(6,*) IA
      STOP
      END
