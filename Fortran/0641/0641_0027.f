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
       INTEGER II4, II3, II2, II1, J1, I1
       DOUBLE PRECISION DD37, DD36, DD35, DD34, DD33, DD32, DD31, DD30, 
     X   DD29, DD28, DD27, DD26, DD25, DD24, DD23, DD22, DD21, DD20, 
     X   DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9
     X   , DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC34, DC33, DC32, DC31, DC30, DC29, DC28, DC27, DC26, 
     X   DC25, DC24, DC23, DC22, DC21, DC20, DC19, DC18, DC17, DC16, 
     X   DC15, DC14, DC13, DC12, DC11, DC10, DC9, DC8, DC7, DC6, DC5, 
     X   DC4, DC3, DC2, DC1

       DO I1=1,46,5
        ID20(I1) = 101 - I1
        ID20(I1+1) = 100 - I1
        ID20(I1+2) = 99 - I1
        ID20(I1+3) = 98 - I1
        ID20(I1+4) = 97 - I1
        ID30(I1) = I1 + 1
        ID30(I1+1) = I1 + 2
        ID30(I1+2) = I1 + 3
        ID30(I1+3) = I1 + 4
        ID30(I1+4) = I1 + 5
       END DO

       DO I1=1,50
        ID10(I1) = I1
        IF (ID20(I1) .GT. I1) THEN
         II2 = (52 - I1) / 8
         II1 = I1 + II2 * 8
         DO J1=I1,44,8
          DC7 = CDSQRT (CD10(J1))
          DC8 = CDSQRT (CD10(J1+2))
          DC9 = CDSQRT (CD10(J1+4))
          DC1 = CDSQRT (CD10(J1+6))
          DC10 = DC7 + CD30(J1+10)
          DC11 = DC8 + CD30(J1+12)
          DC12 = DC9 + CD30(J1+14)
          CDX = DC1 + CD30(J1+16)
          DD7 = DB20(J1,I1+2) * 2D0
          DD8 = DB20(J1+2,I1+2) * 2D0
          DD9 = DB20(J1+4,I1+2) * 2D0
          DD2 = DB20(J1+6,I1+2) * 2D0
          DD34 = DD7 - DB30(10,J1+I1)
          DD35 = DD8 - DB30(10,J1+I1+2)
          DD36 = DD9 - DB30(10,J1+I1+4)
          DD37 = DD2 - DB30(10,J1+I1+6)
          DB10(J1,I1) = DD34
          DD7 = DREAL (DC10)
          DB10(J1+2,I1) = DD35
          DD8 = DREAL (DC11)
          DB10(J1+4,I1) = DD36
          DD9 = DREAL (DC12)
          DB10(J1+6,I1) = DD37
          DD2 = DREAL (CDX)
          DD10 = DNINT (DD7)
          DD11 = DNINT (DD8)
          DD12 = DNINT (DD9)
          DX = DNINT (DD2)
          DD7 = DIMAG (DC10)
          DD8 = DIMAG (DC11)
          DD9 = DIMAG (DC12)
          DD2 = DIMAG (CDX)
          DD13 = DNINT (DD7)
          DD14 = DNINT (DD8)
          DD15 = DNINT (DD9)
          DY = DNINT (DD2)
          DC13 = DCMPLX (DD13, DD10)
          DC14 = DCMPLX (DD14, DD11)
          DC15 = DCMPLX (DD15, DD12)
          DC2 = DCMPLX (DY, DX)
          DC7 = CD10(J1) + DC13
          DC8 = CD10(J1+2) + DC14
          DC9 = CD10(J1+4) + DC15
          DC1 = CD10(J1+6) + DC2
          DC16 = CD10(J1) * CD30(J1*2)
          DC17 = CD10(J1+2) * CD30(J1*2+4)
          DC18 = CD10(J1+4) * CD30(J1*2+8)
          DC3 = CD10(J1+6) * CD30(J1*2+12)
          DC31 = DC7 - DC16
          DC32 = DC8 - DC17
          DC33 = DC9 - DC18
          DC34 = DC1 - DC3
          DD16 = DB10(100,J1) + DB20(J1,100)
          DD17 = DB10(100,J1+2) + DB20(J1+2,100)
          DD18 = DB10(100,J1+4) + DB20(J1+4,100)
          DD3 = DB10(100,J1+6) + DB20(J1+6,100)
          DD7 = DD16 - DD10
          DD8 = DD17 - DD11
          DD9 = DD18 - DD12
          DD2 = DD3 - DX
          DB30(J1,I1) = DD7 - DD13
          DB30(J1+2,I1) = DD8 - DD14
          DB30(J1+4,I1) = DD9 - DD15
          DB30(J1+6,I1) = DD2 - DY
          CD10(J1+6) = DC34
          CD10(J1+4) = DC33
          CD10(J1+2) = DC32
          CD10(J1) = DC31
         END DO
         DO J1=II1,50,2
          DC1 = CDSQRT (CD10(J1))
          CDX = DC1 + CD30(J1+10)
          DD2 = DB20(J1,I1+2) * 2D0
          DB10(J1,I1) = DD2 - DB30(10,J1+I1)
          DD2 = DREAL (CDX)
          DX = DNINT (DD2)
          DD2 = DIMAG (CDX)
          DY = DNINT (DD2)
          DC2 = DCMPLX (DY, DX)
          DC1 = CD10(J1) + DC2
          DC3 = CD10(J1) * CD30(J1*2)
          CD10(J1) = DC1 - DC3
          DD3 = DB10(100,J1) + DB20(J1,100)
          DD2 = DD3 - DX
          DB30(J1,I1) = DD2 - DY
         END DO
        ELSE
         II4 = (52 - I1) / 8
         II3 = I1 + II4 * 8
         DO J1=I1,44,8
          DC19 = CD20(J1) + CD30(J1)
          DC20 = CD20(J1+2) + CD30(J1+2)
          DC21 = CD20(J1+4) + CD30(J1+4)
          DC4 = CD20(J1+6) + CD30(J1+6)
          DC22 = CDSQRT (DC19)
          DC23 = CDSQRT (DC20)
          DC24 = CDSQRT (DC21)
          CDY = CDSQRT (DC4)
          DD19 = DIMAG (DC22)
          DD20 = DIMAG (DC23)
          DD21 = DIMAG (DC24)
          DD4 = DIMAG (CDY)
          DD22 = DNINT (DD19)
          DD23 = DNINT (DD20)
          DD24 = DNINT (DD21)
          DX = DNINT (DD4)
          DD19 = DREAL (DC22)
          DD20 = DREAL (DC23)
          DD21 = DREAL (DC24)
          DD4 = DREAL (CDY)
          DD25 = DNINT (DD19)
          DD26 = DNINT (DD20)
          DD27 = DNINT (DD21)
          DY = DNINT (DD4)
          DB20(I1,J1) = DB10(ID10(J1),I1+1) + DB30(I1,J1+11)
          DB20(I1,J1+2) = DB10(ID10(J1+2),I1+1) + DB30(I1,J1+13)
          DB20(I1,J1+4) = DB10(ID10(J1+4),I1+1) + DB30(I1,J1+15)
          DB20(I1,J1+6) = DB10(ID10(J1+6),I1+1) + DB30(I1,J1+17)
          DC25 = DCMPLX (DD22, DD25)
          DC26 = DCMPLX (DD23, DD26)
          DC27 = DCMPLX (DD24, DD27)
          DC5 = DCMPLX (DX, DY)
          DC19 = CD10(J1) - DC25
          DC20 = CD10(J1+2) - DC26
          DC21 = CD10(J1+4) - DC27
          DC4 = CD10(J1+6) - DC5
          DC28 = CD10(J1) * CD20(J1+1)
          DC29 = CD10(J1+2) * CD20(J1+3)
          DC30 = CD10(J1+4) * CD20(J1+5)
          DC6 = CD10(J1+6) * CD20(J1+7)
          CD10(J1) = DC19 + DC28
          CD10(J1+2) = DC20 + DC29
          CD10(J1+4) = DC21 + DC30
          CD10(J1+6) = DC4 + DC6
          DD28 = DB10(100,J1) + DB20(J1,100)
          DD29 = DB10(100,J1+2) + DB20(J1+2,100)
          DD30 = DB10(100,J1+4) + DB20(J1+4,100)
          DD5 = DB10(100,J1+6) + DB20(J1+6,100)
          DD19 = DD28 - DD22
          DD20 = DD29 - DD23
          DD21 = DD30 - DD24
          DD4 = DD5 - DX
          DB30(J1,I1) = DD19 - DD25
          DB30(J1+2,I1) = DD20 - DD26
          DB30(J1+4,I1) = DD21 - DD27
          DB30(J1+6,I1) = DD4 - DY
         END DO
         DO J1=II3,50,2
          DC4 = CD20(J1) + CD30(J1)
          CDY = CDSQRT (DC4)
          DD4 = DIMAG (CDY)
          DX = DNINT (DD4)
          DD4 = DREAL (CDY)
          DY = DNINT (DD4)
          DB20(I1,J1) = DB10(ID10(J1),I1+1) + DB30(I1,J1+11)
          DC5 = DCMPLX (DX, DY)
          DC4 = CD10(J1) - DC5
          DC6 = CD10(J1) * CD20(J1+1)
          CD10(J1) = DC4 + DC6
          DD5 = DB10(100,J1) + DB20(J1,100)
          DD4 = DD5 - DX
          DB30(J1,I1) = DD4 - DY
         END DO
        END IF
       END DO
       WRITE (6, 99) ((DB10(K1,K2), K1=1,50), K2=1,50)
       WRITE (6, 99) ((DB20(K1,K2), K1=1,50), K2=1,50)
       WRITE (6, 99) ((DB30(K1,K2), K1=1,50), K2=1,50)
       WRITE (6, 991) (CD10(K1), K1=1,50)
   99  FORMAT(8(2X,F10.3))
  991  FORMAT(6(2X,F15.3))

       DO I1=3,27,4
        DA10(ID30(I1)) = DA20(I1*2+15) + DA30(I1*3+2)
        DA30(I1+11) = DA40(I1*2+3) + DNINT (DSQRT (DA10(I1)))
        DA10(ID30(I1+1)) = DA20(I1*2+17) + DA30(I1*3+5)
        DA30(I1+12) = DA40(I1*2+5) + DNINT (DSQRT (DA10(I1+1)))
        DA10(ID30(I1+2)) = DA20(I1*2+19) + DA30(I1*3+8)
        DA30(I1+13) = DA40(I1*2+7) + DNINT (DSQRT (DA10(I1+2)))
        DA10(ID30(I1+3)) = DA20(I1*2+21) + DA30(I1*3+11)
        DA30(I1+14) = DA40(I1*2+9) + DNINT (DSQRT (DA10(I1+3)))
       END DO

       DO I1=3,27,4
        DD31 = DB20(I1,ID20(I1)) - DB30(ID20(I1),I1)
        DD32 = DB20(I1+1,ID20(I1+1)) - DB30(ID20(I1+1),I1+1)
        DD33 = DB20(I1+2,ID20(I1+2)) - DB30(ID20(I1+2),I1+2)
        DD6 = DB20(I1+3,ID20(I1+3)) - DB30(ID20(I1+3),I1+3)
        DB10(ID20(I1),I1) = DNINT (DD31)
        DB10(ID20(I1+1),I1+1) = DNINT (DD32)
        DB10(ID20(I1+2),I1+2) = DNINT (DD33)
        DB10(ID20(I1+3),I1+3) = DNINT (DD6)
       END DO

       DD1 = 1 / 2D0
       DO I1=3,27,4
        IP2 = ID30(I1)
        DB20(I1,IP2) = DB10(IP2,I1-1) + DNINT (DB30(IP2,I1+2) * DD1)
        IP2 = ID30(I1+1)
        DB20(I1+1,IP2) = DB10(IP2,I1) + DNINT (DB30(IP2,I1+3) * DD1)
        IP2 = ID30(I1+2)
        DB20(I1+2,IP2) = DB10(IP2,I1+1) + DNINT (DB30(IP2,I1+4) * DD1)
        IP2 = ID30(I1+3)
        DB20(I1+3,IP2) = DB10(IP2,I1+2) + DNINT (DB30(IP2,I1+5) * DD1)
       END DO

       DO I1=3,30
        IF (ID10(I1) + ID30(I1) .LE. 70) THEN
         DB30(ID30(I1)+ID10(I1),I1) = DNINT (DSQRT (DABS (4D0 + DB10(
     X     ID30(I1)+ID10(I1),I1)))) + DB20(I1,ID30(I1)+ID10(I1))
        END IF
       END DO
       I = 31
       WRITE (6, 999) ' (DA10) ', (DA10(K), K=1,30)
       WRITE (6, 999) ' (DA30) ', (DA30(K), K=14,43)
       WRITE (6, 999) ' (DB10) ', ((DB10(I,J), I=100,71,-1), J=1,30)
       WRITE (6, 999) ' (DB20) ', ((DB20(I,J), I=1,30), J=4,33)
       WRITE (6, 999) ' (DB30) ', ((DB30(I,J), I=7,67,2), J=1,30)
  999  FORMAT(A,6(2X,F10.3))

       DO I1=1,91,5
        ID10(I1) = ID20(I1) - ID30(I1+1)
        ID10(I1+1) = ID20(I1+1) - ID30(I1+2)
        ID10(I1+2) = ID20(I1+2) - ID30(I1+3)
        ID10(I1+3) = ID20(I1+3) - ID30(I1+4)
        ID10(I1+4) = ID20(I1+4) - ID30(I1+5)
       END DO

C$OMP PARALLEL SHARED (ID20,ID10,ID30) PRIVATE (I1)
C$OMP DO 
       DO I1=1,95
        ID20(I1) = MAX (ID10(I1), ID30(I1), 5)
        IF (ID10(I1)) 17, 18, 19
   17   ID10(I1) = -ID10(I1)
        GO TO 19
   18   ID10(I1) = 10
   19   ID30(I1) = ID10(I1) + ID20(I1)
        IF (ID30(I1) .GT. 70) THEN
         ID30(I1) = 100
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, 77) ID10
       WRITE (6, 77) ID20
       WRITE (6, 77) ID30
   77  FORMAT(15I4)

       CDSUM = (0.0D0,0.0D0)
       DO I1=5,53,3
        DB10(I1,ID10(I1)) = DB20(ID20(I1),I1-2) - DB30(ID30(I1)-1,I1+10)
        DB20(ID20(I1),I1) = DB10(I1,I1) * 2D0 + DB30(I1,I1)
        DB10(I1+1,ID10(I1+1)) = DB20(ID20(I1+1),I1-1) - DB30(ID30(I1+1)-
     X    1,I1+11)
        DB20(ID20(I1+1),I1+1) = DB10(I1+1,I1+1) * 2D0 + DB30(I1+1,I1+1)
        DB10(I1+2,ID10(I1+2)) = DB20(ID20(I1+2),I1) - DB30(ID30(I1+2)-1,
     X    I1+12)
        DB20(ID20(I1+2),I1+2) = DB10(I1+2,I1+2) * 2D0 + DB30(I1+2,I1+2)
       END DO

       DO I1=5,53,3
        CDSUM = CDSUM + CD10(I1)
        DA20(3) = DA20(3) + DA20(I1)
        IP1 = ID10(I1)
        DB30(IP1,I1) = DB10(I1,ID30(I1)-2) + DB20(IP1,I1)
        CDSUM = CDSUM + CD10(I1+1)
        DA20(3) = DA20(3) + DA20(I1+1)
        IP1 = ID10(I1+1)
        DB30(IP1,I1+1) = DB10(I1+1,ID30(I1+1)-2) + DB20(IP1,I1+1)
        CDSUM = CDSUM + CD10(I1+2)
        DA20(3) = DA20(3) + DA20(I1+2)
        IP1 = ID10(I1+2)
        DB30(IP1,I1+2) = DB10(I1+2,ID30(I1+2)-2) + DB20(IP1,I1+2)
       END DO
       I = 56

       WRITE (6, 88) ' CDSUM = ', CDSUM
       WRITE (6, 888) ' DA20 = ', DA20(3)
       WRITE (6, 999) ' (DB10) ', ((DB10(I,J), I=5,55), J=5,55)
       WRITE (6, 999) ' (DB20) ', ((DB20(I,J), I=96,46,-1), J=5,55)
       WRITE (6, 999) ' (DB30) ', ((DB30(I,J), I=4,54), J=5,55)
   88  FORMAT(A,2F15.3)
  888  FORMAT(A,F10.4)

       STOP 
      END
