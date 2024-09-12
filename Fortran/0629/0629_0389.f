      integer*4 Q(10)/1,2,3,4,5,6,7,8,9,10/
      integer*4 VV(10,10)/100*0/
      DO 30 I=1,10
         S = Q(I)
         DO 40 J=1,9
            VV(I,J) = 2/S
   40    CONTINUE
   30 CONTINUE
      WRITE(6,*) VV
  100 FORMAT(1H ,5E15.6)
      STOP
      END
