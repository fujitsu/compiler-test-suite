      PROGRAM MAIN
       IMPLICIT REAL*8 (D)
       COMPLEX*16 CD010(40), CD030(40)

       COMPLEX*16 DC7, DC6, DC1
       DO I1=1,40
        CD010(I1) = cmplx(i1+3,-i1)
        CD030(I1) = cmplx(i1,i1+2)
       END DO

       DC1 = (5.,8.)
       DO I1=2,15,6
        DC6 = CD030(I1+2) 
        DC7 = CD030(I1+4) 
        CD010(I1+2) = + DC6
        CD010(I1+4) = - DC7
       END DO

       WRITE (6, *) CD010
       WRITE (6, *) CD030

   99  FORMAT(8F10.3)
   88  FORMAT(10I5)
       STOP 
      END
