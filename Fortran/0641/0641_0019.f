      PROGRAM MAIN
       IMPLICIT REAL*8 (D)
       DIMENSION DCOM03(40), DCOM02(40), DCOM01(40)
       COMMON DCOM01, DCOM02, DCOM03
       DIMENSION DIM01(40), DIM02(40), DIM03(40), DIM04(40), DIM10(40,40
     X   ), DIM20(40,40), DIM30(40,40)
       COMPLEX*16 CD010(40), CD020(40), CD030(40)
       LOGICAL*4 LD010(40), LD020(40), LD030(40), F, T
       INTEGER*4 ID040(-20:20)
       INTEGER*4 ID010(-20:20), ID020(-20:20), ID030(-20:20)
       INTEGER IT6, IT5, IT4, IT3, IT2, IT1
       PARAMETER (IT6 = 40, IT5 = 20, IT4 = 10, IT3 = 3, IT2 = 2)
       PARAMETER (IT1 = 1)

       DATA DIM01/40*2.0D0/ 
       DATA DIM02/40*3.0D0/ 
       DATA DIM03/40*4.0D0/ 
       DATA DIM04/40*5.0D0/ 
       DATA DIM10/1600*2.0D0/ 
       DATA DIM20/800*2.0D0,800*2.0D0/ 
       DATA DIM30/400*1.0D0,800*3.0D0,400*10.0D0/ 
       DATA ID010/41*1/ 
       DATA ID020/41*2/ 
       DATA ID030/41*3/ 
       DATA ID040/41*4/ 
       DATA F/.FALSE./ 
       DATA T/.TRUE./ 
       INTEGER II2, II1, J1, I1
       DOUBLE PRECISION DIM021, DD13, DD12, DD11, DD10, DD9, DD8, DD7, 
     X   DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL4, LL3, LL2, LL1
       COMPLEX*16 DC7, DC6, DC5, DC4, DC3, DC2, DC1
       DO I1=1,37,4
        DCOM01(I1) = 1D0
        DCOM01(I1+1) = 1D0
        DCOM01(I1+2) = 1D0
        DCOM01(I1+3) = 1D0
        DCOM02(I1) = 2D0
        DCOM02(I1+1) = 2D0
        DCOM02(I1+2) = 2D0
        DCOM02(I1+3) = 2D0
        DCOM03(I1) = 3D0
        DCOM03(I1+1) = 3D0
        DCOM03(I1+2) = 3D0
        DCOM03(I1+3) = 3D0
        CD010(I1) = (2.0D0,4.0D0)
        CD010(I1+1) = (2.0D0,4.0D0)
        CD010(I1+2) = (2.0D0,4.0D0)
        CD010(I1+3) = (2.0D0,4.0D0)
        CD020(I1) = (4.0D0,3.0D0)
        CD020(I1+1) = (4.0D0,3.0D0)
        CD020(I1+2) = (4.0D0,3.0D0)
        CD020(I1+3) = (4.0D0,3.0D0)
        CD030(I1) = (1.0D0,2.0D0)
        CD030(I1+1) = (1.0D0,2.0D0)
        CD030(I1+2) = (1.0D0,2.0D0)
        CD030(I1+3) = (1.0D0,2.0D0)
        LL1 = .FALSE.
        LL2 = .FALSE.
        LL3 = .FALSE.
        LL4 = .FALSE.
        LD020(I1) = .FALSE.
        LD020(I1+1) = .FALSE.
        LD020(I1+2) = .FALSE.
        LD020(I1+3) = .FALSE.
        LD030(I1) = LL1
        LD030(I1+1) = LL2
        LD030(I1+2) = LL3
        LD030(I1+3) = LL4
        LD010(I1+3) = LL4
        LD010(I1+2) = LL3
        LD010(I1+1) = LL2
        LD010(I1) = LL1
       END DO
       DO J1=-20,17,4
        ID010(J1) = J1 + 21
        ID010(J1+1) = J1 + 22
        ID010(J1+2) = J1 + 23
        ID010(J1+3) = J1 + 24
        ID020(J1) = 21 - J1
        ID020(J1+1) = 20 - J1
        ID020(J1+2) = 19 - J1
        ID020(J1+3) = 18 - J1
        ID030(J1) = J1 + 21
        ID030(J1+1) = J1 + 22
        ID030(J1+2) = J1 + 23
        ID030(J1+3) = J1 + 24
       END DO
       ID010(20) = 41
       ID020(20) = 1
       ID030(20) = 41

       DD1 = DIM04(3)
       DO I1=2,15,6
        DIM01(I1+4) = DIM02(I1*2+2) * (DIM03(I1+2) - DIM04(I1+5))
        DIM02(I1+1) = DIM01(I1) + DIM03(I1+4) - DD1
        DIM03(I1+1) = DIM01(I1+2) * DIM04(I1)
        DIM01(I1+6) = DIM02(I1*2+6) * (DIM03(I1+4) - DIM04(I1+7))
        DIM02(I1+3) = DIM01(I1+2) + DIM03(I1+6) - DD1
        DIM03(I1+3) = DIM01(I1+4) * DIM04(I1+2)
        DIM01(I1+8) = DIM02(I1*2+10) * (DIM03(I1+6) - DIM04(I1+9))
        DIM02(I1+5) = DIM01(I1+4) + DIM03(I1+8) - DD1
        DIM03(I1+5) = DIM01(I1+6) * DIM04(I1+4)
       END DO

       DO I1=2,15,6
        DC4 = CD010(I1+4) - (2.0D0,1.0D0)
        DC5 = CD010(I1+6) - (2.0D0,1.0D0)
        DC2 = CD010(I1+8) - (2.0D0,1.0D0)
        CD020(40-I1) = DC4 + CD030(I1+20)
        CD020(38-I1) = DC5 + CD030(I1+22)
        CD020(36-I1) = DC2 + CD030(I1+24)
       END DO

       DC1 = CD020(40)
       DO I1=2,15,6
        DC6 = CD030(I1+2) * CD030(I1+2)
        DC7 = CD030(I1+4) * CD030(I1+4)
        DC3 = CD030(I1+6) * CD030(I1+6)
        CD010(I1+2) = DC1 + DC6
        CD010(I1+4) = DC1 + DC7
        CD010(I1+6) = DC1 + DC3
       END DO

       DO I1=2,15,6
        DD8 = DIM20(1,I1) - DIM30(I1,4)
        DD9 = DIM20(1,I1+2) - DIM30(I1+2,4)
        DD10 = DIM20(1,I1+4) - DIM30(I1+4,4)
        DD11 = DIM30(I1,3) * DIM10(I1*2-1,I1)
        DD12 = DIM30(I1+2,3) * DIM10(I1*2+3,I1+2)
        DD13 = DIM30(I1+4,3) * DIM10(I1*2+7,I1+4)
        DD4 = DIM20(1,1) * 2D0
        DD5 = DIM20(1,1) * 2D0
        DD2 = DIM20(1,1) * 2D0
        DD6 = DIMAG (CD010(I1))
        DD7 = DIMAG (CD010(I1+2))
        DD3 = DIMAG (CD010(I1+4))
        DIM30(3,I1) = DD4 + DD6
        DIM30(3,I1+2) = DD5 + DD7
        DIM30(3,I1+4) = DD2 + DD3
        DIM20(I1+4,1) = DD13
        DIM20(I1+2,1) = DD12
        DIM20(I1,1) = DD11
        DIM10(I1+4,I1+6) = DD10
        DIM10(I1+2,I1+4) = DD9
        DIM10(I1,I1+2) = DD8
       END DO

       WRITE (6, *) '   ** RESULT OF DIM01,DIM02,DIM03 ** '
       WRITE (6, 99) (DIM01(K), K=6,24)
       WRITE (6, 99) (DIM02(K), K=3,21)
       WRITE (6, 99) (DIM03(K), K=3,21)

       WRITE (6, *) '   ** RESULT OF DIM10,DIM20,DIM30 ** '
       WRITE (6, 99) (DIM10(K,K), K=2,20)
       WRITE (6, 99) (DIM20(K,1), K=2,20)
       WRITE (6, 99) (DIM30(3,K), K=2,20)

       WRITE (6, *) '   ** RESULT OF CD010,CD020 ** '
       WRITE (6, 99) (CD010(K), K=4,22)
       WRITE (6, 99) (CD020(K), K=20,40)
C$OMP PARALLEL SHARED (DIM04,DIM01,DIM02,DIM03,CD010,CD030) PRIVATE (J1,
C$OMP& I1,DIM021)
       DIM021 = 0D0
C$OMP DO 
       DO J1=35,20,-1
        DO I1=11,16,5
         DIM04(J1-3) = DNINT (DSIN (DIM01(J1-19) - DIM02(2)))
         DIM03(J1+2) = DIM01(J1-3) + DNINT (DIMAG (CDSQRT (CD010(J1-1)))
     X     )
         DIM021 = DIM021 + DREAL (CD030(J1-10)) + DIM03(J1-18)
         DIM04(J1-3) = DNINT (DSIN (DIM01(J1-19) - DIM02(2)))
         DIM03(J1+2) = DIM01(J1-3) + DNINT (DIMAG (CDSQRT (CD010(J1-1)))
     X     )
         DIM021 = DIM021 + DREAL (CD030(J1-10)) + DIM03(J1-18)
         DIM04(J1-3) = DNINT (DSIN (DIM01(J1-19) - DIM02(2)))
         DIM03(J1+2) = DIM01(J1-3) + DNINT (DIMAG (CDSQRT (CD010(J1-1)))
     X     )
         DIM021 = DIM021 + DREAL (CD030(J1-10)) + DIM03(J1-18)
         DIM04(J1-3) = DNINT (DSIN (DIM01(J1-19) - DIM02(2)))
         DIM03(J1+2) = DIM01(J1-3) + DNINT (DIMAG (CDSQRT (CD010(J1-1)))
     X     )
         DIM021 = DIM021 + DREAL (CD030(J1-10)) + DIM03(J1-18)
         DIM04(J1-3) = DNINT (DSIN (DIM01(J1-19) - DIM02(2)))
         DIM03(J1+2) = DIM01(J1-3) + DNINT (DIMAG (CDSQRT (CD010(J1-1)))
     X     )
         DIM021 = DIM021 + DREAL (CD030(J1-10)) + DIM03(J1-18)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II3)
       DIM02(1) = DIM02(1) + DIM021
C$OMP END CRITICAL (II3)
C$OMP END PARALLEL 

       DO I1=11,20
        IF (I1 .NE. 18) THEN
         II1 = I1 * 2
         DO J1=35,23,-4
          DIM10(J1-1,I1) = DIM20(II1,J1-10) - DIM30(I1,J1+2)
          DIM30(J1,I1-1) = DIM20(I1-3,II1-20) * DIM10(I1-3,J1-1)
          DIM20(J1,II1) = DIM10(J1+1,I1+1) - DIM30(I1+1,J1-3)
          DIM10(J1-2,I1) = DIM20(II1,J1-11) - DIM30(I1,J1+1)
          DIM30(J1-1,I1-1) = DIM20(I1-3,II1-20) * DIM10(I1-3,J1-2)
          DIM20(J1-1,II1) = DIM10(J1,I1+1) - DIM30(I1+1,J1-4)
          DIM10(J1-3,I1) = DIM20(II1,J1-12) - DIM30(I1,J1)
          DIM30(J1-2,I1-1) = DIM20(I1-3,II1-20) * DIM10(I1-3,J1-3)
          DIM20(J1-2,II1) = DIM10(J1-1,I1+1) - DIM30(I1+1,J1-5)
          DIM10(J1-4,I1) = DIM20(II1,J1-13) - DIM30(I1,J1-1)
          DIM30(J1-3,I1-1) = DIM20(I1-3,II1-20) * DIM10(I1-3,J1-4)
          DIM20(J1-3,II1) = DIM10(J1-2,I1+1) - DIM30(I1+1,J1-6)
         END DO
        ELSE
         II2 = I1 * 2
         DO J1=35,23,-4
          DIM10(J1-1,I1) = DIM20(II2,J1-10) - DIM30(I1,J1+2)
          DIM30(J1,I1-1) = DIM20(I1-3,II2-20) * DIM10(I1-3,J1-1)
          DIM20(J1,II2) = DIM10(J1+1,I1+1) - DIM30(I1+1,J1-3)
          DIM10(J1-2,I1) = DIM20(II2,J1-11) - DIM30(I1,J1+1)
          DIM30(J1-1,I1-1) = DIM20(I1-3,II2-20) * DIM10(I1-3,J1-2)
          DIM20(J1-1,II2) = DIM10(J1,I1+1) - DIM30(I1+1,J1-4)
          DIM10(J1-3,I1) = DIM20(II2,J1-12) - DIM30(I1,J1)
          DIM30(J1-2,I1-1) = DIM20(I1-3,II2-20) * DIM10(I1-3,J1-3)
          DIM20(J1-2,II2) = DIM10(J1-1,I1+1) - DIM30(I1+1,J1-5)
          DIM10(J1-4,I1) = DIM20(II2,J1-13) - DIM30(I1,J1-1)
          DIM30(J1-3,I1-1) = DIM20(I1-3,II2-20) * DIM10(I1-3,J1-4)
          DIM20(J1-3,II2) = DIM10(J1-2,I1+1) - DIM30(I1+1,J1-6)
         END DO
        END IF
       END DO
       I = 21

       WRITE (6, 99) (DIM02(K), K=1,2)
       WRITE (6, 99) (DIM03(K), K=37,22,-1)
       WRITE (6, 99) (DIM04(K), K=32,17,-1)
       WRITE (6, 99) ((DIM10(I,J), I=19,34), J=10,20)
       WRITE (6, 99) ((DIM20(I,J), I=20,35), J=20,40,2)
       WRITE (6, 99) ((DIM30(I,J), I=20,35), J=9,19)

       INV1 = 1
       INV2 = 41
       INV3 = 31
       DO I1=9,-9,-1
        IF (I1 .EQ. 0) THEN
         LD010(INV1) = .NOT.LD010(INV1)
         GO TO 45
        END IF
   46   ID010(I1+10) = ID020(I1) + ID030(I1+10)
        ID020(I1+2) = ID010(I1+3) * ID030(I1*2+1)
        ID030(I1*2) = ID010(I1+2) + ID020(-10)
        INV2 = INV2 - 1
        CD020(INV2) = CD010(INV3) + CD030(INV1)
        INV3 = INV3 - 1
        CD010(INV3) = CD020(INV2-1) * CD030(INV1)
        CD030(INV1) = CD010(INV3+1) - CD020(INV2)
        DIM01(INV1) = DMAX1 (DREAL (CD010(INV3)), DIMAG (CD030(INV1)))
        DIM02(INV2) = DMAX1 (DFLOAT (ID020(I1+2)), DFLOAT (ID030(I1)))
        IF (DIM01(INV1) .GE. DIM02(INV2)) THEN
         LD020(INV1) = .TRUE.
        ELSE
         LD030(INV1) = .TRUE.
        END IF
        INV1 = INV1 + 1
        GO TO 40

   45   ID010(I1) = MIN (IABS (ID020(I1)), IABS (ID030(I1-10)))
        GO TO 46
   40   CONTINUE
       END DO

       WRITE (6, *) '   ** RESULT OF I*4 DATA ** '
       WRITE (6, 88) (ID010(K), K=-10,10)
       WRITE (6, 88) (ID020(K), K=-10,10)
       WRITE (6, 88) (ID030(K), K=-20,20,2)
       WRITE (6, *) '   ** RESULT OF R*8 DATA ** '
       WRITE (6, 99) (DIM01(K), K=1,21)
       WRITE (6, 99) (DIM02(K), K=20,40)
       WRITE (6, *) '   ** RESULT OF C*16 DATA ** '
       WRITE (6, 99) (CD010(K), K=10,30)
       WRITE (6, 99) (CD020(K), K=20,40)
       WRITE (6, 99) (CD030(K), K=1,20)
       WRITE (6, *) '   ** RESULT OF L*4 DATA ** '
       WRITE (6, *) ' LD010 = ', LD010
       WRITE (6, *) ' LD020 = ', LD020
       WRITE (6, *) ' LD030 = ', LD030

       ICNT = 0
       DO I1=-15,7,4
        LD020(I1+17) = LD010(I1+17) .AND. .NOT.LD030(I1+17)
        LD020(I1+18) = LD010(I1+18) .AND. .NOT.LD030(I1+18)
        LD020(I1+19) = LD010(I1+19) .AND. .NOT.LD030(I1+19)
        LD020(I1+20) = LD010(I1+20) .AND. .NOT.LD030(I1+20)
       END DO
       DO I1=9,10,1
        LD020(I1+17) = LD010(I1+17) .AND. .NOT.LD030(I1+17)
       END DO
       DO I1=-15,10
        IF (LD010(I1+16) .AND. LD020(I1+16) .OR. .NOT.LD030(I1+16)) THEN
         IF (I1 .LE. 10) THEN
          ICNT = -1
         END IF
         IF (I1 .GT. 10 .AND. I1 .LE. 20) THEN
          ICNT = 0
         END IF
         IF (I1 .GT. 21 .AND. I1 .LE. 30) THEN
          ICNT = 1
         END IF
         IF (I1 .GT. 31) THEN
          GO TO 23
         END IF
        END IF
        IF (ICNT) 19, 21, 22
   18   ID020(I1) = ID010(I1-1) + ID030(I1) + ID040(I1)
        GO TO 24
   19   ID010(I1) = MAX (ID040(I1), ID030(I1)) + ID020(I1-1)
        GO TO 24
   21   ID030(I1) = MIN (ID010(I1), ID040(I1)) * ID020(I1)
        GO TO 24
   22   ID040(I1) = MAX (ID010(I1), MIN (ID020(I1), ID030(I1)))
        GO TO 24
   23   ID010(I1) = ID020(I1+1) + (ID030(I1) - 2) * ID040(I1-1)
        GO TO 18
   24   CONTINUE
       END DO
       DO I1=-15,7,4
        LD030(I1+16) = LD010(I1+16) .OR. LD020(I1+17)
        LD030(I1+17) = LD010(I1+17) .OR. LD020(I1+18)
        LD030(I1+18) = LD010(I1+18) .OR. LD020(I1+19)
        LD030(I1+19) = LD010(I1+19) .OR. LD020(I1+20)
       END DO
       DO I1=9,10,1
        LD030(I1+16) = LD010(I1+16) .OR. LD020(I1+17)
       END DO
       WRITE (6, 88) (ID010(K), K=-20,10)
       WRITE (6, 88) (ID020(K), K=-20,10)
       WRITE (6, 88) (ID030(K), K=-20,10)
       WRITE (6, 88) (ID040(K), K=-20,10)
       WRITE (6, *) ' ** LD020 ** ', LD020
       WRITE (6, *) ' ** LD030 ** ', LD030
   99  FORMAT(8F10.3)
   88  FORMAT(10I5)

       STOP 
      END
