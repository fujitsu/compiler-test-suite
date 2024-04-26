      DIMENSION  DA10(50,50)
      INTEGER*4 IN(50)/50*5/

      DATA     DA10/2500*1.0D0/

      DO 52 J=14,18,IN(2)
         DO 50 I=30,40
            DA10(I,J)=DA10(I,J) +9.
 50      CONTINUE
 52   CONTINUE

      DO 62 J=1,IN(1),IN(2)
         DO 60 I=1,50,IN(2)
            DA10(I,J)=DA10(I,J) +7.
 60      CONTINUE
 62   CONTINUE
      WRITE(6,*) DA10
      STOP
      END
