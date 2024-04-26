      PROGRAM MAIN
       IMPLICIT REAL*8 (D)
       COMPLEX*16 CD010(40), CD030(40),CD020(40),CD040(40)

       COMPLEX*16 DC7, DC6, DC1
       DO I1=1,40
        CD010(I1) = 1
        CD020(I1) = 2
        CD030(I1) = 3
        CD040(I1) = 0
       END DO

       DC1 = (5.,8.)
       DO I1=2,15,2
        DC6 = CD020(I1) 
        DC7 = CD030(I1) 
        CD010(I1) = DC6+2
        CD040(I1) = DC7+1
       END DO

       WRITE (6, *) CD010
       WRITE (6, *) CD020
       WRITE (6, *) CD030
       WRITE (6, *) CD040

   99  FORMAT(8F10.3)
   88  FORMAT(10I5)
       STOP 
      END
