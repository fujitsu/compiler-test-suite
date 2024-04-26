      PROGRAM MAIN
      REAL*4 X(5),Y(5),Z(5),PX(5),PZ(5)
      DATA X/1.2,2.3,3.4,4.5,5.6/,Y/6.7,7.8,8.9,9.0,0.1/,S1/0.87/
      DATA Z/1.2,2.3,3.4,4.5,5.6/,PZ/6.7,7.8,8.9,9.0,0.1/,S2/0.1/
      data px/5*0/
C
      DO 10 I=2,5
         X(I) = X(I-1) * Y(I) + Z(I)
         PX(I) = X(I) * S1 + PZ(I) * S2
   10 CONTINUE
C
      WRITE(6,100) PX
  100 FORMAT(1H ,5F10.3)
      STOP
      END
