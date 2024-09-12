      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA40(-20:-1), DA30(-20:-1), DA20(20), DA10(20)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION DB30(-10:10), DB20(-10:10), DB10(-10:10)
       COMMON /BLK2/ DB10, DB20, DB30
       DIMENSION LD30(20), LD20(20), LD10(20)
       COMMON /BLK3/ LD10, LD20, LD30
       DIMENSION DC10(20), DC20(20)

       EQUIVALENCE (DA30(-20), DC10(1)), (DB10(-10), DC20(1))
       EQUIVALENCE (IT1, IN1), (IT2, IN2), (LX, LZ), (LY, LW)
       INTEGER IT5, IT4
       PARAMETER (IT5 = 5, IT4 = 4)
       INTEGER II1
       DOUBLE PRECISION DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5
     X   , DD4, DD3, DD2, DD1

       DO I=2,12,10
        LD10(I) = .TRUE.
        LD10(I+2) = .TRUE.
        LD10(I+4) = .TRUE.
        LD10(I+6) = .TRUE.
        LD10(I+8) = .TRUE.
        LD20(I-1) = .TRUE.
        LD20(I+1) = .TRUE.
        LD20(I+3) = .TRUE.
        LD20(I+5) = .TRUE.
        LD20(I+7) = .TRUE.
       END DO
       IT1 = 10
       DO I=2,10
        LX = LD10(I+10)
        LY = LD30(I)
        NI = I + IT1
        IT1 = I - 1
        IF (LX .OR. LY) THEN
         II1 = -I
         DO J=2,12,10
          DD3 = DA10(J) * 2D0
          DD4 = DA10(J+2) * 2D0
          DD5 = DA10(J+4) * 2D0
          DD6 = DA10(J+6) * 2D0
          DD1 = DA10(J+8) * 2D0
          DD9 = DD3 - DB20(J-10)
          DD10 = DD4 - DB20(J-8)
          DD11 = DD5 - DB20(J-6)
          DD12 = DD6 - DB20(J-4)
          DD13 = DD1 - DB20(J-2)
          DB10(J-10) = DA30(1-J) - DB30(II1)
          DB10(J-8) = DA30(-1-J) - DB30(II1)
          DB10(J-6) = DA30(-3-J) - DB30(II1)
          DB10(J-4) = DA30(-5-J) - DB30(II1)
          DB10(J-2) = DA30(-7-J) - DB30(II1)
          DA30(-8-J) = DD13
          DA30(-6-J) = DD12
          DA30(-4-J) = DD11
          DA30(-2-J) = DD10
          DA30(-J) = DD9
         END DO
        ELSE
         LD10(I) = .NOT.LZ .OR. LW
         IT2 = -I
         DO J=1,7,3
          DB20(I) = DB20(I) + DB20(IN2+10)
          DA10(I) = DA10(I) + DA10(1-IN2)
          IT2 = -(I + J)
          DB20(I) = DB20(I) + DB20(IN2+10)
          DA10(I) = DA10(I) + DA10(1-IN2)
          IT2 = -1 - (I + J)
          DB20(I) = DB20(I) + DB20(IN2+10)
          DA10(I) = DA10(I) + DA10(1-IN2)
          IT2 = -2 - (I + J)
         END DO
         DO J=1,9
          IF (.NOT.LD30(J) .AND. .NOT.LD20(J+10)) THEN
          ELSE
           DA20(J) = DA20(J) + DC10(NI)
          END IF
         END DO
         LX = .NOT.LD30(9)
         LW = .NOT.LD20(19)
         DO J=1,7,3
          DD7 = DC20(J+10) * 2D0
          DD8 = DC20(J+11) * 2D0
          DD2 = DC20(J+12) * 2D0
          DB10(-J) = DD7 - DA10(I-1)
          DB10(-1-J) = DD8 - DA10(I-1)
          DB10(-2-J) = DD2 - DA10(I-1)
         END DO
        END IF
        LD30(I) = .NOT.LX .AND. .NOT.LW
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DB10) ', DB10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DB20) ', DB20
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (LD30) ', LD30
       STOP 
      END

      BLOCK DATA INIT
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA40(-20:-1), DA30(-20:-1), DA20(20), DA10(20)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION DB30(-10:10), DB20(-10:10), DB10(-10:10)
       COMMON /BLK2/ DB10, DB20, DB30
       DIMENSION LD30(20), LD20(20), LD10(20)
       COMMON /BLK3/ LD10, LD20, LD30
       DATA DA10, DA20, DA30, DA40/40*4.D0,20*3.D0,20*5.D0/ 
       DATA DB10, DB20, DB30/21*2.D0,21*6.D0,21*3.D0/ 
       DATA LD10, LD20, LD30/60*.FALSE./ 
      END
