   PROGRAM MAIN
     complex*8 yy
     yy = (3.5_2,4.5_2)+2
     if (abs(yy-(5.5,4.5))>0.0001) print *,101
     yy = (3.5_4,4.5_4)+2
     if (abs(yy-(5.5,4.5))>0.0001) print *,102
     PRINT*,"PASS"
   END PROGRAM
