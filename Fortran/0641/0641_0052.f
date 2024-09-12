      PROGRAM MAIN
       IMPLICIT REAL*8 (D), INTEGER*4 (I), COMPLEX*16 (C)
       DIMENSION DA10(-20:20), DA20(-20:20), DA30(-20:20), DB10(-20:20,
     X   -20:20), DB20(-20:20,-20:20)
       DIMENSION ID10(-20:20,-20:20), ID20(-20:20,-20:20), ID30(-20:20,
     X   -20:20)
       DIMENSION CD10(-20:20,-20:20), CD20(-20:20,-20:20), CD30(-30:30,
     X   -30:30)
       INTEGER IM5, IM4, IM3, IM2, IM1, IT6, IT5, IT4, IT3, IT2, IT1
       PARAMETER (IM5 = -20, IM4 = -10, IM3 = -4, IM2 = -2, IM1 = -1)
       PARAMETER (IT6 = 10, IT5 = 5, IT4 = 4, IT3 = 3, IT2 = 2)
       PARAMETER (IT1 = 1)

       DATA DA10/41*4.0D0/ 
       DATA DA20/41*2.0D0/ 
       DATA DA30/41*3.0D0/ 
       DATA DB10/1681*1.0D0/ 
       DATA DB20/1681*2.0D0/ 
       DATA ID10/1681*2/ 
       DATA ID20/1681*3/ 
       DATA ID30/1681*4/ 
       DATA CD10/1681*(1.0D0,2.0D0)/ 
       DATA CD20/1681*(2.0D0,3.0D0)/ 
       DATA CD30/3721*(4.0D0,8.0D0)/ 
       INTEGER II1, J1, I1

C$OMP PARALLEL SHARED (DB10,DB20,CD10,CD20,CD30) PRIVATE (II1,I1,J1)
C$OMP DO 
       DO II1=0,1
        GO TO (4), II1
        DO I1=-10,12
         DO J1=10,-8,-3
          DB10(J1,I1-1) = DB20(I1,J1+5) * 2D0 + DB10(J1-1,I1)
          DB20(J1+2,I1) = DB10(I1,J1) + DB10(J1-10,I1)
          DB10(J1-1,I1-1) = DB20(I1,J1+4) * 2D0 + DB10(J1-2,I1)
          DB20(J1+1,I1) = DB10(I1,J1-1) + DB10(J1-11,I1)
          DB10(J1-2,I1-1) = DB20(I1,J1+3) * 2D0 + DB10(J1-3,I1)
          DB20(J1,I1) = DB10(I1,J1-2) + DB10(J1-12,I1)
         END DO
        END DO
C$OMP FLUSH
        GO TO 5

    4   DO I1=-10,12
         DO J1=10,-8,-3
          CD10(I1,J1) = CD20(I1+2,J1+4) + CD30(I1+10,J1+10)
          CD20(J1,I1) = CD30(I1,J1+4) + DCMPLX (DNINT (DREAL (CDSQRT (
     X      CD10(J1-1,I1-2)))), DNINT (DIMAG (CDSQRT (CD10(J1-1,I1-2))))
     X      )
          CD10(I1,J1-1) = CD20(I1+2,J1+3) + CD30(I1+10,J1+9)
          CD20(J1-1,I1) = CD30(I1,J1+3) + DCMPLX (DNINT (DREAL (CDSQRT (
     X      CD10(J1-2,I1-2)))), DNINT (DIMAG (CDSQRT (CD10(J1-2,I1-2))))
     X      )
          CD10(I1,J1-2) = CD20(I1+2,J1+2) + CD30(I1+10,J1+8)
          CD20(J1-2,I1) = CD30(I1,J1+2) + DCMPLX (DNINT (DREAL (CDSQRT (
     X      CD10(J1-3,I1-2)))), DNINT (DIMAG (CDSQRT (CD10(J1-3,I1-2))))
     X      )
         END DO
        END DO
C$OMP FLUSH
    5   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 13
       WRITE (6, 99) ' (CD10) ', ((CD10(I,J), I=-10,12), J=10,-10,-1)
       WRITE (6, 99) ' (CD20) ', ((CD20(I,J), I=10,-10,-1), J=-10,10)
       WRITE (6, 99) ' (DB10) ', ((DB10(I,J), I=10,-10,-1), J=-10,10)
       WRITE (6, 99) ' (DB20) ', ((DB20(I,J), I=10,-10,-1), J=-10,10)
   99  FORMAT(A,(8F8.3))

       STOP 
      END
