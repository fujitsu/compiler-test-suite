      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA10(100), DA20(100), DA30(100), DA40(100), DB10(100,
     X   100), DB20(100,100), DB30(100,100)
       DIMENSION CD10(100), CD20(100), CD30(100)
       INTEGER*4 ID10(100), ID20(100), ID30(100)
       INTEGER IM3, IM2, IM1, IT5, IT4, IT3, IT2, IT1
       PARAMETER (IM3 = -5, IM2 = -2, IM1 = -1, IT5 = 15, IT4 = 10)
       PARAMETER (IT3 = 5, IT2 = 2, IT1 = 1)

       DATA DA10/100*2.0D0/ 
       DATA DA20/100*3.0D0/ 
       DATA DA30/100*4.D0/ 
       DATA DA40/100*16.D0/ 
       DATA DB10/10000*1.D0/ 
       DATA DB20/10000*1.0D0/ 
       DATA DB30/10000*0.D0/ 
       DATA CD10/100*(1.D0,2.D0)/ 
       DATA CD20/100*(2.D0,4.D0)/ 
       DATA CD30/100*(3.D0,1.D0)/ 
       DATA ID10/100*1/ 
       DATA ID20/100*2/ 
       DATA ID30/100*4/ 

       DO I=1,91,5
        ID10(I) = ID20(I) - ID30(I+1)
        ID10(I+1) = ID20(I+1) - ID30(I+2)
        ID10(I+2) = ID20(I+2) - ID30(I+3)
        ID10(I+3) = ID20(I+3) - ID30(I+4)
        ID10(I+4) = ID20(I+4) - ID30(I+5)
       END DO

C$OMP PARALLEL SHARED (ID20,ID10,ID30) PRIVATE (I)
C$OMP DO 
       DO I=1,95
        ID20(I) = MAX (ID10(I), ID30(I), 5)
        IF (ID10(I)) 3, 4, 5
    3   ID10(I) = -ID10(I)
        GO TO 5
    4   ID10(I) = 10
    5   ID30(I) = ID10(I) + ID20(I)
        IF (ID30(I) .GT. 70) THEN
         ID30(I) = 100
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ID10
       WRITE (6, *) ID20
       WRITE (6, *) ID30
       STOP 
      END
