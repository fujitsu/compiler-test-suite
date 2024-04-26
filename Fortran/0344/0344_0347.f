      PROGRAM MAIN
      DIMENSION TO(10,10,10),AA(10),BB(10),TS1(10,10),TS2(10,10)
      DATA TO/1000*1./
      DATA AA,BB,TS1,TS2/220*5./
      DATA M,N/2*10/,DY/2/
      DO 1120 J=2,M
       JM=J-1
       DO 1130 I=1,N
        TO(I,J,1)=AA(I)*TO(I,JM,2)/DY+BB(I)*TO(I,J,2)/DY
 1130  CONTINUE
       TS1(J,1)=AA(1)*TS1(JM,2)/DY+BB(1)*TS1(J,2)/DY
       TS2(J,1)=AA(N)*TS2(JM,2)/DY+BB(N)*TS2(J,2)/DY
 1120 CONTINUE
      
      WRITE(6,*) TS1,TS2
      STOP
      END
