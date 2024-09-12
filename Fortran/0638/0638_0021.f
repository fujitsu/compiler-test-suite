          REAL*4 LE1(10),LE2/2/,LE3(10,10)/100*1.0/
          REAL*4 GE1(10),GE2(10)/10*3/
          REAL*4 NE1(1024),NE2(1024),NE3(1024,2)
          DO 10 I= 1,10
            LE1(I) = LE2+LE3(I,I)
   10     CONTINUE
          DO 100 J = 1,2
            DO 20 I= 1,10
              GE1(I) = LE3(I,J)+GE2(I)
   20       CONTINUE
            DO 100 I=1,1024
              NE1(I) = I
              NE2(I) = NE1(I)
              NE3(I,J) = J
  100     CONTINUE
          WRITE(6,*) LE1,LE2,LE3,GE1,GE2,NE1,NE2,NE3
          STOP
          END
