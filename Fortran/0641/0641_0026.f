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
       INTEGER II2, II1, J1, I1
       DOUBLE PRECISION DVAL11, DVAL21

       IVAL = 0

       DO I1=-10,9,4
        DA10(I1+3) = DA20(I1+2) + DA30(I1-10)
        DA10(I1+4) = DA20(I1+3) + DA30(I1-9)
        DA10(I1+5) = DA20(I1+4) + DA30(I1-8)
        DA10(I1+6) = DA20(I1+5) + DA30(I1-7)
       END DO
       DO I1=10,12,1
        DA10(I1+3) = DA20(I1+2) + DA30(I1-10)
       END DO

       DO I1=-10,9,4
        DA20(I1) = DA10(I1+2) * DA30(I1+3)
        DA20(I1+1) = DA10(I1+3) * DA30(I1+4)
        DA20(I1+2) = DA10(I1+4) * DA30(I1+5)
        DA20(I1+3) = DA10(I1+5) * DA30(I1+6)
       END DO
       DO I1=10,12,1
        DA20(I1) = DA10(I1+2) * DA30(I1+3)
       END DO

       DO I1=-10,12
        DVAR1 = DNINT (DSQRT (DA20(I1) + DA10(I1-2)))
        IF (I1 .GT. 8) THEN
         DVAR1 = DCOS (DA20(I1-1)) + 2.5D0
         DVAR1 = DNINT (DVAR1)
        END IF
        DA30(I1-10) = DA10(I1+1) + DVAR1
       END DO

C$OMP PARALLEL SHARED (DB10,DB20,CD10,CD20,CD30) PRIVATE (II1,I1,J1)
C$OMP DO 
       DO II1=0,1
        GO TO (19), II1
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
        GO TO 21

   19   DO I1=-10,12
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
   21   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 13
       WRITE (6, 99) ' (DA10) ', DA10
       WRITE (6, 99) ' (DA20) ', DA20
       WRITE (6, 99) ' (DA30) ', DA30
       WRITE (6, 99) ' (CD10) ', ((CD10(I,J), I=-10,12), J=10,-10,-1)
       WRITE (6, 99) ' (CD20) ', ((CD20(I,J), I=10,-10,-1), J=-10,10)
       WRITE (6, 99) ' (DB10) ', ((DB10(I,J), I=10,-10,-1), J=-10,10)
       WRITE (6, 99) ' (DB20) ', ((DB20(I,J), I=10,-10,-1), J=-10,10)
   99  FORMAT(A,8(F10.3))

       DO I1=-20,10,1
        IF (I1 .GE. 0) THEN
         DO J1=-10,1,10
          ID10(I1,J1*2) = ID10(I1,J1*2+1) * ID30(J1+1,I1+2)
          ID20(J1,J1) = ID10(I1,J1*2+2) + ID30(J1+5,I1+2)
          ID30(I1,J1+1) = ID20(I1,J1-1) + ID20(J1+1,I1)
          ID10(I1,J1*2+4) = ID10(I1,J1*2+5) * ID30(J1+3,I1+2)
          ID20(J1+2,J1+2) = ID10(I1,J1*2+6) + ID30(J1+7,I1+2)
          ID30(I1,J1+3) = ID20(I1,J1+1) + ID20(J1+3,I1)
          ID10(I1,J1*2+8) = ID10(I1,J1*2+9) * ID30(J1+5,I1+2)
          ID20(J1+4,J1+4) = ID10(I1,J1*2+10) + ID30(J1+9,I1+2)
          ID30(I1,J1+5) = ID20(I1,J1+3) + ID20(J1+5,I1)
          ID10(I1,J1*2+12) = ID10(I1,J1*2+13) * ID30(J1+7,I1+2)
          ID20(J1+6,J1+6) = ID10(I1,J1*2+14) + ID30(J1+11,I1+2)
          ID30(I1,J1+7) = ID20(I1,J1+5) + ID20(J1+7,I1)
          ID10(I1,J1*2+16) = ID10(I1,J1*2+17) * ID30(J1+9,I1+2)
          ID20(J1+8,J1+8) = ID10(I1,J1*2+18) + ID30(J1+13,I1+2)
          ID30(I1,J1+9) = ID20(I1,J1+7) + ID20(J1+9,I1)
         END DO

         DO J1=-10,1,10
          IVAL = MAX (IVAL, ID30(I1-1,J1))
          IVAL = MAX (IVAL, ID30(I1-1,J1+2))
          IVAL = MAX (IVAL, ID30(I1-1,J1+4))
          IVAL = MAX (IVAL, ID30(I1-1,J1+6))
          IVAL = MAX (IVAL, ID30(I1-1,J1+8))
         END DO
         IND = I1
        ELSE
         DO J1=-10,1,10
          ID10(I1,J1*2) = ID10(I1,J1*2+1) * ID30(J1+1,I1+2)
          ID20(J1,J1) = ID10(I1,J1*2+2) + ID30(J1+5,I1+2)
          ID30(I1,J1+1) = ID20(I1,J1-1) + ID20(J1+1,I1)
          ID10(I1,J1*2+4) = ID10(I1,J1*2+5) * ID30(J1+3,I1+2)
          ID20(J1+2,J1+2) = ID10(I1,J1*2+6) + ID30(J1+7,I1+2)
          ID30(I1,J1+3) = ID20(I1,J1+1) + ID20(J1+3,I1)
          ID10(I1,J1*2+8) = ID10(I1,J1*2+9) * ID30(J1+5,I1+2)
          ID20(J1+4,J1+4) = ID10(I1,J1*2+10) + ID30(J1+9,I1+2)
          ID30(I1,J1+5) = ID20(I1,J1+3) + ID20(J1+5,I1)
          ID10(I1,J1*2+12) = ID10(I1,J1*2+13) * ID30(J1+7,I1+2)
          ID20(J1+6,J1+6) = ID10(I1,J1*2+14) + ID30(J1+11,I1+2)
          ID30(I1,J1+7) = ID20(I1,J1+5) + ID20(J1+7,I1)
          ID10(I1,J1*2+16) = ID10(I1,J1*2+17) * ID30(J1+9,I1+2)
          ID20(J1+8,J1+8) = ID10(I1,J1*2+18) + ID30(J1+13,I1+2)
          ID30(I1,J1+9) = ID20(I1,J1+7) + ID20(J1+9,I1)
         END DO
        END IF
       END DO
       WRITE (6, *) ' (ID10) ', ID10
       WRITE (6, *) ' (ID20) ', ID20
       WRITE (6, *) ' (ID30) ', ID30
       WRITE (6, 888) ' IVAL = ', IVAL, ' IND = ', IND
  888  FORMAT(A,I5,A,I5)
  999  FORMAT(A,F10.3,A,F10.3)
C$OMP PARALLEL SHARED (ID10,ID20,ID30) PRIVATE (II2,J1,I1)
C$OMP DO 
       DO J1=20,-20,-1
        II2 = -J1

        DO I1=-20,17,4
         ID10(I1,J1) = II2
         ID10(I1+1,J1) = II2
         ID10(I1+2,J1) = II2
         ID10(I1+3,J1) = II2
         ID20(I1,J1) = J1
         ID20(I1+1,J1) = J1
         ID20(I1+2,J1) = J1
         ID20(I1+3,J1) = J1
         ID30(I1,J1) = J1
         ID30(I1+1,J1) = J1
         ID30(I1+2,J1) = J1
         ID30(I1+3,J1) = J1
        END DO
        ID10(20,J1) = II2
        ID20(20,J1) = J1
        ID30(20,J1) = J1
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       DO I1=0,20
        DO J1=-20,-2,3
         CD10(ID10(I1,J1),J1) = CD20(ID20(I1,J1),I1) + CD30(I1,J1)
         CD20(ID20(I1,J1),I1-1) = CD10(ID10(I1,J1),ID10(I1,J1)) * CD30(
     X     J1,J1)
         IP = ID30(I1,J1)
         CD30(IP,J1) = CD10(ID10(I1,J1),IP) - CD20(IP,J1)
         CD10(ID10(I1,J1+1),J1+1) = CD20(ID20(I1,J1+1),I1) + CD30(I1,J1+
     X     1)
         CD20(ID20(I1,J1+1),I1-1) = CD10(ID10(I1,J1+1),ID10(I1,J1+1)) * 
     X     CD30(J1+1,J1+1)
         IP = ID30(I1,J1+1)
         CD30(IP,J1+1) = CD10(ID10(I1,J1+1),IP) - CD20(IP,J1+1)
         CD10(ID10(I1,J1+2),J1+2) = CD20(ID20(I1,J1+2),I1) + CD30(I1,J1+
     X     2)
         CD20(ID20(I1,J1+2),I1-1) = CD10(ID10(I1,J1+2),ID10(I1,J1+2)) * 
     X     CD30(J1+2,J1+2)
         IP = ID30(I1,J1+2)
         CD30(IP,J1+2) = CD10(ID10(I1,J1+2),IP) - CD20(IP,J1+2)
        END DO
       END DO
       WRITE (6, 99) ' (CD10) ', CD10
       WRITE (6, 99) ' (CD20) ', CD20
       WRITE (6, 99) ' (CD30) ', CD30
       DVAL1 = 0D0
       DVAL2 = 0D0
C$OMP PARALLEL SHARED (CD10,DVAL2,DVAL1) PRIVATE (J1,I1,DVAL21,DVAL11)
       DVAL21 = DVAL2
       DVAL11 = DVAL1
C$OMP DO 
       DO J1=-20,20
        DO I1=-20,20
         IF (DREAL (CD10(I1,J1)) .GE. DIMAG (CD10(I1,J1))) THEN
          DVAL11 = DMAX1 (DVAL11, DREAL (CD10(I1,J1)))
         ELSE
          DVAL21 = DMAX1 (DVAL21, DIMAG (CD10(I1,J1)))
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II3)
       DVAL2 = DMAX1 (DVAL2, DVAL21)
       DVAL1 = DMAX1 (DVAL1, DVAL11)
C$OMP END CRITICAL (II3)
C$OMP END PARALLEL 
       WRITE (6, 999) ' DVAL1 = ', DVAL1, ' DVAL2 = ', DVAL2

       STOP 
      END
