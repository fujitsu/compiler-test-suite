      PROGRAM MAIN
      INTEGER*4 IA1(10)/10*0/
      REAL*8 DA1(10)/10*0D0/
      COMPLEX*8 CA2(10,10)/100*(0.0,0.0)/
      INTEGER I1
      DO I1=1,6,5
       CA2(I1,1) = IA1(I1) + DA1(I1)
       IA1(I1) = -I1
      END DO
      WRITE (6, *) 'CA2'
      WRITE (6, *) CA2(1,1),CA2(2,1),CA2(6,1),CA2(7,1)
      WRITE (6, *) 'IA1 = ', IA1
      END
