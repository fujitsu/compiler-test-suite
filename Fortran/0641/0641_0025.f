      PROGRAM MAIN
       INTEGER*4 YEAR(1983:1985), MONTH(12), ID10(-30:30), ID20(-30:30),
     X    ID30(-30:30)
       REAL*8 DA10(-100:0), DA20(-100:0), DA30(0:100), DA40(0:100), DB10
     X   (-20:20,-20:20), DB20(-20:20,-20:20), DB30(-20:20,-20:20)
       LOGICAL*4 LD10(100), LD20(100)
       INTEGER*4 IDATA(3,12,31,2)
       COMPLEX*16 CD10(-50:50), CD20(-50:50), CD30(-50:50)
       LOGICAL*4 LB10(100), LB20(100), LB30(100)
       EQUIVALENCE (DA10(-100), DB10(-20,-20)), (DA30(100), DB10(-20,0))
       EQUIVALENCE (LB10(1), LB20(96)), (LB20(100), LB30(5))
       EQUIVALENCE (CD10(-50), DB20(-20,-20)), (CD30(50), DB30(20,20))
       EQUIVALENCE (ID30(30), LB20(1))
       EQUIVALENCE (DA20(-100), DA40(0))
       CHARACTER*5 SDAY1, SDAY2, SDATA1, SDATA2
       CHARACTER WEEK(7)*3
       INTEGER II1, K1, J1, I1
       DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, 
     X   DD1
       LOGICAL LL1
       COMPLEX*16 DC4, DC3, DC2, DC1
       INT1 = 7

       DATA ID10/61*1/ 
       DATA ID20/61*2/ 
       DATA ID30/61*3/ 
       DATA IDATA/2232*0/ 
       DATA DA10/101*2.0D0/ 
       DATA LD10/100*.FALSE./ 
       DATA LD20/100*.FALSE./ 
       DATA LB10/100*.FALSE./ 

       DO I1=1,97,4
        LB20(I1) = .FALSE.
        LB20(I1+1) = .FALSE.
        LB20(I1+2) = .FALSE.
        LB20(I1+3) = .FALSE.
       END DO
C$OMP PARALLEL SHARED (CD10,CD20,CD30,DA20,DB30,DB20,DB10) PRIVATE (J1,
C$OMP& I1)
C$OMP DO 
       DO J1=-50,47,4
        CD10(J1) = (2.0D0,4.0D0)
        CD10(J1+1) = (2.0D0,4.0D0)
        CD10(J1+2) = (2.0D0,4.0D0)
        CD10(J1+3) = (2.0D0,4.0D0)
        CD20(J1) = (4.0D0,16.0D0)
        CD20(J1+1) = (4.0D0,16.0D0)
        CD20(J1+2) = (4.0D0,16.0D0)
        CD20(J1+3) = (4.0D0,16.0D0)
        CD30(J1) = (3.0D0,9.0D0)
        CD30(J1+1) = (3.0D0,9.0D0)
        CD30(J1+2) = (3.0D0,9.0D0)
        CD30(J1+3) = (3.0D0,9.0D0)
        DA20(J1-50) = 3D0
        DA20(J1-49) = 3D0
        DA20(J1-48) = 3D0
        DA20(J1-47) = 3D0
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP SINGLE 
       CD10(50) = (2.0D0,4.0D0)
       CD20(50) = (4.0D0,16.0D0)
       CD30(50) = (3.0D0,9.0D0)
       DA20(0) = 3D0
C$OMP END SINGLE NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J1=-20,20
        DO I1=-20,17,4
         DB30(I1,J1) = 2D0
         DB30(I1+1,J1) = 2D0
         DB30(I1+2,J1) = 2D0
         DB30(I1+3,J1) = 2D0
         DB20(I1,J1) = 4D0
         DB20(I1+1,J1) = 4D0
         DB20(I1+2,J1) = 4D0
         DB20(I1+3,J1) = 4D0
         DB10(I1,J1) = 6D0
         DB10(I1+1,J1) = 6D0
         DB10(I1+2,J1) = 6D0
         DB10(I1+3,J1) = 6D0
        END DO
        DB30(20,J1) = 2D0
        DB20(20,J1) = 4D0
        DB10(20,J1) = 6D0
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       SDAY1 = '12.24'
       SDAY2 = ' 7.16'
       WEEK(1) = 'SUN'
       WEEK(2) = 'MON'
       WEEK(3) = 'TUE'
       WEEK(4) = 'WED'
       WEEK(5) = 'THU'
       WEEK(6) = 'FRI'
       WEEK(7) = 'SAT'

       YEAR(1983) = 1983
       YEAR(1984) = 1984
       YEAR(1985) = 1985
       DO I1=1,11,2
        IF (I1 .LE. 7) THEN
         MONTH(I1) = 31
         MONTH(I1+1) = 30
        ELSE
         MONTH(I1+1) = 30
         MONTH(I1) = 31
        END IF
        IF (I1 .EQ. 1) THEN
         MONTH(I1+1) = 28
        END IF
       END DO

       DO I1=1,3
        DO J1=1,12
         II1 = MONTH(J1)
         DO K1=1,31
          IF (K1 .LE. II1) THEN
           IF (INT1 .GT. 7) THEN
            INT1 = 1
           END IF
           IDATA(I1,J1,K1,1) = K1
           IDATA(I1,J1,K1,2) = INT1
           INT1 = INT1 + 1
          END IF
         END DO
        END DO
       END DO
       SDATA1 = SDAY1
       SDATA2 = SDAY2
       READ (SDATA1(1:2), '(I2)') IMON1
       READ (SDATA1(4:5), '(I2)') IDAY1
       READ (SDATA2(1:2), '(I2)') IMON2
       READ (SDATA2(4:5), '(I2)') IDAY2
       WRITE (6, *) IMON1, IDAY1, IMON2, IDAY2
       IWN1 = 1
       IWN2 = 1
       DO I1=1,3
        DO J1=1,12
         IF (J1 .EQ. IMON1) THEN
          DO K1=1,31
           IF (IDAY1 .EQ. K1) THEN
            IWN1 = IDATA(I1,J1,K1,2)
           END IF
          END DO
         END IF
         LL1 = J1 .EQ. IMON2
         IF (LL1) THEN
          DO K1=1,31
           IF (IDAY1 .EQ. K1) THEN
            IWN2 = IDATA(I1,J1,K1,2)
           END IF
          END DO
         END IF
        END DO
        WRITE (6, *) ' ** X-MAS ** ', YEAR(I1+1982), '.', SDATA1, ' (', 
     X    WEEK(IWN1), ') ** '
        WRITE (6, *) ' ** MY BIRTHDAY **', YEAR(I1+1982), '.', SDATA2, 
     X    ' (', WEEK(IWN2), ') ** '
       END DO

       DO I1=-5,17,4
        DD3 = DA20(I1*(-2)-20) + DA30(I1+20)
        DD4 = DA20(I1*(-2)-22) + DA30(I1+21)
        DD5 = DA20(I1*(-2)-24) + DA30(I1+22)
        DD1 = DA20(I1*(-2)-26) + DA30(I1+23)
        DA10(-10-I1) = DD3 - DA40(I1*2+20)
        DA10(-11-I1) = DD4 - DA40(I1*2+22)
        DA10(-12-I1) = DD5 - DA40(I1*2+24)
        DA10(-13-I1) = DD1 - DA40(I1*2+26)
        CD10(I1*2) = CD20(I1*2+10) + CD30(I1+12)
        CD10(I1*2+2) = CD20(I1*2+12) + CD30(I1+13)
        CD10(I1*2+4) = CD20(I1*2+14) + CD30(I1+14)
        CD10(I1*2+6) = CD20(I1*2+16) + CD30(I1+15)
        ID30(I1+10) = ID20(I1+9) * ID10(I1+2)
        ID30(I1+11) = ID20(I1+10) * ID10(I1+3)
        ID30(I1+12) = ID20(I1+11) * ID10(I1+4)
        ID30(I1+13) = ID20(I1+12) * ID10(I1+5)
       END DO
       DO I1=19,20,1
        DD1 = DA20(I1*(-2)-20) + DA30(I1+20)
        DA10(-10-I1) = DD1 - DA40(I1*2+20)
        CD10(I1*2) = CD20(I1*2+10) + CD30(I1+12)
        ID30(I1+10) = ID20(I1+9) * ID10(I1+2)
       END DO

       DO I1=-5,17,4
        ID10(I1) = ID20(I1+10) + ID30(I1+3)
        ID10(I1+1) = ID20(I1+11) + ID30(I1+4)
        ID10(I1+2) = ID20(I1+12) + ID30(I1+5)
        ID10(I1+3) = ID20(I1+13) + ID30(I1+6)
        DD6 = DA40(I1+10) + DA10(-9-I1)
        DD7 = DA40(I1+11) + DA10(-10-I1)
        DD8 = DA40(I1+12) + DA10(-11-I1)
        DD2 = DA40(I1+13) + DA10(-12-I1)
        DA30(I1+10) = DSQRT (DD6)
        DA30(I1+11) = DSQRT (DD7)
        DA30(I1+12) = DSQRT (DD8)
        DA30(I1+13) = DSQRT (DD2)
        DA30(I1+10) = DNINT (DA30(I1+10))
        DA30(I1+11) = DNINT (DA30(I1+11))
        DA30(I1+12) = DNINT (DA30(I1+12))
        DA30(I1+13) = DNINT (DA30(I1+13))
        DC2 = CD20(I1) * 2D0
        DC3 = CD20(I1+1) * 2D0
        DC4 = CD20(I1+2) * 2D0
        DC1 = CD20(I1+3) * 2D0
        CD30(I1+10) = DC2 + CD10(I1*2+1)
        CD30(I1+11) = DC3 + CD10(I1*2+3)
        CD30(I1+12) = DC4 + CD10(I1*2+5)
        CD30(I1+13) = DC1 + CD10(I1*2+7)
       END DO
       DO I1=19,20,1
        ID10(I1) = ID20(I1+10) + ID30(I1+3)
        DD2 = DA40(I1+10) + DA10(-9-I1)
        DA30(I1+10) = DSQRT (DD2)
        DA30(I1+10) = DNINT (DA30(I1+10))
        DC1 = CD20(I1) * 2D0
        CD30(I1+10) = DC1 + CD10(I1*2+1)
       END DO
       WRITE (6, *) (ID10(K), K=-5,20)
       WRITE (6, *) (ID30(K), K=5,30)
       WRITE (6, 999) (DA10(K), K=-5,-30,-1)
       WRITE (6, 999) (DA30(K), K=5,30)
       WRITE (6, 999) (CD10(K), K=-10,40,2)
       WRITE (6, 999) (CD30(K), K=5,30)
  999  FORMAT(8(2X,F8.3))

       DO I1=-20,16,6
        ID20(I1) = ID30(I1+5) - ID10(I1+7)
        ID20(I1+2) = ID30(I1+7) - ID10(I1+9)
        ID20(I1+4) = ID30(I1+9) - ID10(I1+11)
       END DO
       DO I1=-20,20,2
        CD20(I1) = CD10(I1*(-2)) - DCMPLX (DA20(I1-50)) - CD30(-2-I1)
        IF (DREAL (CD20(I1)) .GE. DIMAG (CD20(I1))) THEN
         LB10(I1+21) = .TRUE.
         DA40(I1+30) = DREAL (CD20(I1-1)) * 2D0
        ELSE
         LB30(I1+21) = .TRUE.
         DA40(I1+30) = DIMAG (CD20(I1-1)) * 2D0
        END IF
        IF (I1 .GE. -15 .AND. I1 .LE. 15) THEN
         DO J1=15,-12,-4
          DB20(I1,J1) = DB20(J1,I1) + DB10(I1,J1+2) - DB30(I1,J1)
          DB30(I1,J1-2) = DMAX1 (DB20(I1,J1), DB10(J1,I1)) - DMIN1 (DB20
     X      (J1,I1), DB10(I1,J1))
          DB20(I1,J1-1) = DB20(J1-1,I1) + DB10(I1,J1+1) - DB30(I1,J1-1)
          DB30(I1,J1-3) = DMAX1 (DB20(I1,J1-1), DB10(J1-1,I1)) - DMIN1 (
     X      DB20(J1-1,I1), DB10(I1,J1-1))
          DB20(I1,J1-2) = DB20(J1-2,I1) + DB10(I1,J1) - DB30(I1,J1-2)
          DB30(I1,J1-4) = DMAX1 (DB20(I1,J1-2), DB10(J1-2,I1)) - DMIN1 (
     X      DB20(J1-2,I1), DB10(I1,J1-2))
          DB20(I1,J1-3) = DB20(J1-3,I1) + DB10(I1,J1-1) - DB30(I1,J1-3)
          DB30(I1,J1-5) = DMAX1 (DB20(I1,J1-3), DB10(J1-3,I1)) - DMIN1 (
     X      DB20(J1-3,I1), DB10(I1,J1-3))
         END DO
         DO J1=-13,-15,-1
          DD9 = DB20(J1,I1) + DB10(I1,J1+2) - DB30(I1,J1)
          DB30(I1,J1-2) = DMAX1 (DB20(I1,J1), DB10(J1,I1)) - DMIN1 (DB20
     X      (J1,I1), DB10(I1,J1))
          DB20(I1,J1) = DD9
         END DO
        ELSE
         DO J1=15,-12,-4
          DB20(I1,J1) = DB20(J1,I1) + DB10(I1,J1+2) - DB30(I1,J1)
          DB30(I1,J1-2) = DMAX1 (DB20(I1,J1), DB10(J1,I1)) - DMIN1 (DB20
     X      (J1,I1), DB10(I1,J1))
          DB20(I1,J1-1) = DB20(J1-1,I1) + DB10(I1,J1+1) - DB30(I1,J1-1)
          DB30(I1,J1-3) = DMAX1 (DB20(I1,J1-1), DB10(J1-1,I1)) - DMIN1 (
     X      DB20(J1-1,I1), DB10(I1,J1-1))
          DB20(I1,J1-2) = DB20(J1-2,I1) + DB10(I1,J1) - DB30(I1,J1-2)
          DB30(I1,J1-4) = DMAX1 (DB20(I1,J1-2), DB10(J1-2,I1)) - DMIN1 (
     X      DB20(J1-2,I1), DB10(I1,J1-2))
          DB20(I1,J1-3) = DB20(J1-3,I1) + DB10(I1,J1-1) - DB30(I1,J1-3)
          DB30(I1,J1-5) = DMAX1 (DB20(I1,J1-3), DB10(J1-3,I1)) - DMIN1 (
     X      DB20(J1-3,I1), DB10(I1,J1-3))
         END DO
         DO J1=-13,-15,-1
          DD10 = DB20(J1,I1) + DB10(I1,J1+2) - DB30(I1,J1)
          DB30(I1,J1-2) = DMAX1 (DB20(I1,J1), DB10(J1,I1)) - DMIN1 (DB20
     X      (J1,I1), DB10(I1,J1))
          DB20(I1,J1) = DD10
         END DO
        END IF
        DA20(I1-50) = DB10(I1,2) + DA40(I1+20) - DIMAG (CD30(I1*(-2)))
        IF (DA20(I1-50) .LE. 0D0) THEN
         LD10(I1+21) = .TRUE.
        ELSE
         LD20(I1+21) = .TRUE.
        END IF
       END DO
       I = 22
       WRITE (6, *) (ID20(K), K=-20,20)
       WRITE (6, 999) (CD20(K), K=-20,20)
       WRITE (6, 999) (DA40(K), K=10,50)
       WRITE (6, 999) (DA20(K), K=-70,-30)
       WRITE (6, *) (LB10(K), K=1,40)
       WRITE (6, *) (LB30(K), K=1,40)
       WRITE (6, 999) ((DB20(I,J), I=-20,20), J=15,-15,-1)
       WRITE (6, 999) ((DB30(I,J), I=-20,20), J=13,-17,-1)
       WRITE (6, *) (LD10(K), K=1,40)
       WRITE (6, *) (LD20(K), K=1,40)

       ICNT1 = 0
       IVAL1 = 0
       DO I1=1,97,4
        LB10(I1) = .NOT.LD10(I1) .OR. .NOT.LB30(101-I1)
        LB10(I1+1) = .NOT.LD10(I1+1) .OR. .NOT.LB30(100-I1)
        LB10(I1+2) = .NOT.LD10(I1+2) .OR. .NOT.LB30(99-I1)
        LB10(I1+3) = .NOT.LD10(I1+3) .OR. .NOT.LB30(98-I1)
       END DO
       DO I1=1,100
        IF (LB10(I1)) THEN
         ICNT1 = ICNT1 + 1
         IVAL1 = I1
        END IF
       END DO
       ICNT2 = 0
       IVAL2 = 0
       DO I1=1,60
        IF (LB30(I1)) THEN
         IF (LD10(I1) .OR. LD20(I1)) THEN
          ICNT2 = ICNT2 + 1
          IVAL2 = IVAL2 + ID10(I1-30)
         END IF
        ELSE
         ID10(-30) = ID10(-30) + ID10(I1-30)
        END IF
       END DO
       WRITE (6, *) ' ICNT1 = ', ICNT1, ' ** IVAL1 = ', IVAL1
       WRITE (6, *) ' ICNT2 = ', ICNT2, ' ** IVAL2 = ', IVAL2
       WRITE (6, *) LB10
       WRITE (6, *) ID10

       STOP 
      END
