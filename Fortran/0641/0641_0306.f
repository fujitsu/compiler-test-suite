      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA10(20), DA20(20), DA30(20), DA40(20), LD10(20), LD20(
     X   20), LD30(20), LD40(20), ID10(20), ID20(20), ID30(20)

       DATA DA10/20*1.D0/ 
       DATA DA20/20*2.D0/ 
       DATA DA30/20*4.D0/ 
       DATA DA40/20*3.D0/ 
       DATA LD10/20*.FALSE./ 
       DATA LD20/20*.FALSE./ 
       DATA LD30/20*.FALSE./ 
       DATA LD40/20*.FALSE./ 
       DATA ID10/20*1/ 
       DATA ID20/10*1,10*2/ 
       DATA ID30/20*2/ 
       DOUBLE PRECISION DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, 
     X   DD33, DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, 
     X   DD23, DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, 
     X   DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2
       DOUBLE PRECISION DD1
       LOGICAL LL15, LL14, LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, 
     X   LL5, LL4, LL3, LL2, LL1

       DVAL = 0D0
       DO I=5,15,2
        DX = DA10(I) + DA20(I) + DA30(I)
        DY = DA10(I) + DA40(I) / DA20(I)
        DZ = FLOAT (ID20(I) * I)
        IF (DX .LT. DY) THEN
         IF (I .LE. 10) THEN
          DD1 = DABS (DX - DY)
          DO J=20,5,-4
           DD9 = DX / DA10(J)
           DD10 = DX / DA10(J-1)
           DD11 = DX / DA10(J-2)
           DD4 = DX / DA10(J-3)
           DD12 = DNINT (DD9)
           DD13 = DNINT (DD10)
           DD14 = DNINT (DD11)
           DD3 = DNINT (DD4)
           DD27 = DD12 - DA40(J)
           DD28 = DD13 - DA40(J-1)
           DD29 = DD14 - DA40(J-2)
           DD30 = DD3 - DA40(J-3)
           LL1 = .TRUE.
           LL2 = .TRUE.
           LL3 = .TRUE.
           LL4 = .TRUE.
           DA20(J) = DD1 + DA30(J)
           DA20(J-1) = DD1 + DA30(J-1)
           DA20(J-2) = DD1 + DA30(J-2)
           DA20(J-3) = DD1 + DA30(J-3)
           LD40(J) = .NOT.LL1 .OR. LD20(J)
           LD40(J-1) = .NOT.LL2 .OR. LD20(J-1)
           LD40(J-2) = .NOT.LL3 .OR. LD20(J-2)
           LD40(J-3) = .NOT.LL4 .OR. LD20(J-3)
           LD10(J-3) = LL4
           LD10(J-2) = LL3
           LD10(J-1) = LL2
           LD10(J) = LL1
           DA10(J-3) = DD30
           DA10(J-2) = DD29
           DA10(J-1) = DD28
           DA10(J) = DD27
          END DO
          DO J=4,2,-1
           DD4 = DX / DA10(J)
           DD3 = DNINT (DD4)
           DD31 = DD3 - DA40(J)
           LL5 = .TRUE.
           DA20(J) = DD1 + DA30(J)
           LD40(J) = .NOT.LL5 .OR. LD20(J)
           LD10(J) = LL5
           DA10(J) = DD31
          END DO
          DO J=20,2,-1
           DVAL = DVAL + DNINT (DSQRT (DA40(J)))
           IF (DA10(J) .GE. DA20(J)) THEN
            LD30(J) = .TRUE.
           END IF
           DA40(J) = DMAX1 (DA40(J), DX, DY, DZ)
          END DO
          IVAL = ID10(2) + 2
         ELSE
          DD2 = DABS (DX - DY)
          DO J=20,5,-4
           DD15 = DX / DA10(J)
           DD16 = DX / DA10(J-1)
           DD17 = DX / DA10(J-2)
           DD6 = DX / DA10(J-3)
           DD18 = DNINT (DD15)
           DD19 = DNINT (DD16)
           DD20 = DNINT (DD17)
           DD5 = DNINT (DD6)
           DD32 = DD18 - DA40(J)
           DD33 = DD19 - DA40(J-1)
           DD34 = DD20 - DA40(J-2)
           DD35 = DD5 - DA40(J-3)
           LL6 = .TRUE.
           LL7 = .TRUE.
           LL8 = .TRUE.
           LL9 = .TRUE.
           DA20(J) = DD2 + DA30(J)
           DA20(J-1) = DD2 + DA30(J-1)
           DA20(J-2) = DD2 + DA30(J-2)
           DA20(J-3) = DD2 + DA30(J-3)
           LD40(J) = LL6 .OR. .NOT.LD20(J)
           LD40(J-1) = LL7 .OR. .NOT.LD20(J-1)
           LD40(J-2) = LL8 .OR. .NOT.LD20(J-2)
           LD40(J-3) = LL9 .OR. .NOT.LD20(J-3)
           LD10(J-3) = LL9
           LD10(J-2) = LL8
           LD10(J-1) = LL7
           LD10(J) = LL6
           DA10(J-3) = DD35
           DA10(J-2) = DD34
           DA10(J-1) = DD33
           DA10(J) = DD32
          END DO
          DO J=4,2,-1
           DD6 = DX / DA10(J)
           DD5 = DNINT (DD6)
           DD36 = DD5 - DA40(J)
           LL10 = .TRUE.
           DA20(J) = DD2 + DA30(J)
           LD40(J) = LL10 .OR. .NOT.LD20(J)
           LD10(J) = LL10
           DA10(J) = DD36
          END DO
          DO J=20,2,-1
           DVAL = DVAL + DNINT (DSQRT (DA40(J)))
           IF (DA10(J) .GE. DA20(J)) THEN
            LD30(J) = .TRUE.
           END IF
          END DO
          IVAL = ID10(2) + 2
          DO J=20,5,-4
           DA40(J) = DMIN1 (DA40(J-1), DA30(J-1))
           DA40(J-1) = DMIN1 (DA40(J-2), DA30(J-2))
           DA40(J-2) = DMIN1 (DA40(J-3), DA30(J-3))
           DA40(J-3) = DMIN1 (DA40(J-4), DA30(J-4))
          END DO
          DO J=4,2,-1
           DA40(J) = DMIN1 (DA40(J-1), DA30(J-1))
          END DO
         END IF
        ELSE
         IF (I .LE. 10) THEN
          DO J=20,5,-4
           DD21 = DX / DA10(J)
           DD22 = DX / DA10(J-1)
           DD23 = DX / DA10(J-2)
           DD8 = DX / DA10(J-3)
           DD24 = DNINT (DD21)
           DD25 = DNINT (DD22)
           DD26 = DNINT (DD23)
           DD7 = DNINT (DD8)
           DD37 = DD24 - DA40(J)
           DD38 = DD25 - DA40(J-1)
           DD39 = DD26 - DA40(J-2)
           DD40 = DD7 - DA40(J-3)
           LL11 = .TRUE.
           LL12 = .TRUE.
           LL13 = .TRUE.
           LL14 = .TRUE.
           DA10(J) = DD37
           DD24 = DMIN1 (DA20(J), DA20(J-1))
           DA10(J-1) = DD38
           DD25 = DMIN1 (DA20(J-1), DA20(J-2))
           DA10(J-2) = DD39
           DD26 = DMIN1 (DA20(J-2), DA20(J-3))
           DA10(J-3) = DD40
           DD7 = DMIN1 (DA20(J-3), DA20(J-4))
           DA30(J) = DZ + DD24
           DA30(J-1) = DZ + DD25
           DA30(J-2) = DZ + DD26
           DA30(J-3) = DZ + DD7
           LD40(J) = .NOT.LD10(J) .OR. LL11
           LD40(J-1) = .NOT.LD10(J-1) .OR. LL12
           LD40(J-2) = .NOT.LD10(J-2) .OR. LL13
           LD40(J-3) = .NOT.LD10(J-3) .OR. LL14
           LD20(J-3) = LL14
           LD20(J-2) = LL13
           LD20(J-1) = LL12
           LD20(J) = LL11
          END DO
          DO J=4,2,-1
           DD8 = DX / DA10(J)
           DD7 = DNINT (DD8)
           DD41 = DD7 - DA40(J)
           LL15 = .TRUE.
           DA10(J) = DD41
           DD7 = DMIN1 (DA20(J), DA20(J-1))
           DA30(J) = DZ + DD7
           LD40(J) = .NOT.LD10(J) .OR. LL15
           LD20(J) = LL15
          END DO
          DO J=20,2,-1
           DVAL = DVAL + DNINT (DSQRT (DA40(J)))
           IF (DA10(J) .GE. DA20(J)) THEN
            LD30(J) = .TRUE.
           END IF
           DA40(J) = DMAX1 (DA40(J), DX, DY, DZ)
          END DO
          IVAL = ID10(2) + 2
         ELSE
          DO J=20,5,-4
           DVAL = DVAL + DNINT (DSQRT (DA40(J)))
           DA10(J) = DNINT (DX / DA10(J)) - DA40(J)
           LD20(J) = .TRUE.
           LD40(J) = LD10(J) .OR. .NOT.LD20(J)
           DVAL = DVAL + DNINT (DSQRT (DA40(J-1)))
           DA10(J-1) = DNINT (DX / DA10(J-1)) - DA40(J-1)
           LD20(J-1) = .TRUE.
           LD40(J-1) = LD10(J-1) .OR. .NOT.LD20(J-1)
           DVAL = DVAL + DNINT (DSQRT (DA40(J-2)))
           DA10(J-2) = DNINT (DX / DA10(J-2)) - DA40(J-2)
           LD20(J-2) = .TRUE.
           LD40(J-2) = LD10(J-2) .OR. .NOT.LD20(J-2)
           DVAL = DVAL + DNINT (DSQRT (DA40(J-3)))
           DA10(J-3) = DNINT (DX / DA10(J-3)) - DA40(J-3)
           LD20(J-3) = .TRUE.
           LD40(J-3) = LD10(J-3) .OR. .NOT.LD20(J-3)
          END DO
          DO J=4,2,-1
           DVAL = DVAL + DNINT (DSQRT (DA40(J)))
           DA10(J) = DNINT (DX / DA10(J)) - DA40(J)
           LD20(J) = .TRUE.
           LD40(J) = LD10(J) .OR. .NOT.LD20(J)
          END DO
          DO J=20,5,-4
           DA40(J) = DMIN1 (DA40(J-1), DA30(J-1))
           DA40(J-1) = DMIN1 (DA40(J-2), DA30(J-2))
           DA40(J-2) = DMIN1 (DA40(J-3), DA30(J-3))
           DA40(J-3) = DMIN1 (DA40(J-4), DA30(J-4))
          END DO
          DO J=4,2,-1
           DA40(J) = DMIN1 (DA40(J-1), DA30(J-1))
          END DO
          DO J=20,2,-1
           DA30(J) = DZ + DMIN1 (DA20(J), DA20(J-1))
           IF (DA10(J) .GE. DA20(J)) THEN
            LD30(J) = .TRUE.
           END IF
          END DO
          IVAL = ID10(2) + 2
         END IF
        END IF
        ID10(I) = IVAL
        ID20(I) = ID30(I) + ID20(I)
        ID30(I) = IDINT (DVAL)
        IF (LD10(I) .AND. LD20(I) .OR. LD10(I) .AND. LD40(I)) THEN
         LD30(I) = .TRUE.
         DA10(1) = DA10(1) + DX + DY - DZ
        END IF
       END DO
       WRITE (6, *) '(DA10) ', DA10
       WRITE (6, *) ' (ID10) ', ID10
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (LD20) ', LD20
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (ID30) ', ID30
       WRITE (6, *) ' (LD30) ', LD30
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (LD40) ', LD40
       STOP 
      END
