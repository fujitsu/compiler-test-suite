      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DA40(20,20), 
     X   DB10(20,20,20), DB20(20,20,20), DB30(20,20,20)
       DIMENSION LA10(20,20), LA20(20,20), DC10(20), DC20(20), LD10(20,
     X   20,20), LD20(20,20,20)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.0D0/ 
       DATA DA30/400*3.0D0/ 
       DATA DA40/400*2.0D0/ 
       DATA DB10/8000*1.0D0/ 
       DATA DB20/8000*2.0D0/ 
       DATA DB30/8000*4.0D0/ 
       DATA LA10/400*.FALSE./ 
       DATA LA20/400*.FALSE./ 
       DATA LD10/8000*.FALSE./ 
       DATA LD20/8000*.FALSE./ 
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1, 
     X   K1, I1, AA11
       DOUBLE PRECISION DD49, DD48, DD47, DD46, DD45, DD44, DD43, DD42, 
     X   DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, DD32, 
     X   DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, DD22, 
     X   DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, 
     X   DD11, DD10
       DOUBLE PRECISION DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2

       DO AA11=1,17,4
        DC10(AA11) = 0D0
        DC10(AA11+1) = 0D0
        DC10(AA11+2) = 0D0
        DC10(AA11+3) = 0D0
        DC20(AA11) = 0D0
        DC20(AA11+1) = 0D0
        DC20(AA11+2) = 0D0
        DC20(AA11+3) = 0D0
       END DO

       DO I1=1,6,5
        DA10(1,I1) = DA20(I1,I1) + DA30(2,I1)
        DA10(1,I1+1) = DA20(I1+1,I1+1) + DA30(2,I1+1)
        DA10(1,I1+2) = DA20(I1+2,I1+2) + DA30(2,I1+2)
        DA10(1,I1+3) = DA20(I1+3,I1+3) + DA30(2,I1+3)
        DA10(1,I1+4) = DA20(I1+4,I1+4) + DA30(2,I1+4)
        DA30(1,I1) = DA40(10,I1) - DA20(I1,I1)
        DA30(1,I1+1) = DA40(10,I1+1) - DA20(I1+1,I1+1)
        DA30(1,I1+2) = DA40(10,I1+2) - DA20(I1+2,I1+2)
        DA30(1,I1+3) = DA40(10,I1+3) - DA20(I1+3,I1+3)
        DA30(1,I1+4) = DA40(10,I1+4) - DA20(I1+4,I1+4)
       END DO
       DO J=11,20
        IF (J .GT. 10) THEN
         DD7 = DA10(10,J)
         DO I1=1,J-10
          DA20(I1,J) = DB30(I1,J,10) * DD7
          DA40(I1,J) = DA20(I1,J-1) + DB20(I1,J,J) * DD1
          IF (DA10(J,I1) .GT. DA30(J,I1)) THEN
           LA10(I1,J) = .TRUE.
          END IF
         END DO
        END IF
       END DO
       WRITE (6, *) ' (DA10) ', (DA10(1,K), K=1,10)
       WRITE (6, *) ' (DA30) ', (DA30(1,K), K=1,10)
       DO J=1,10
        WRITE (6, *) ' (DA20) ', (DA20(I,J), I=1,10)
       END DO
       DO J=1,10
        WRITE (6, *) ' (DA40) ', (DA40(I,J), I=1,10)
       END DO
       DO J=1,10
        WRITE (6, *) ' (LA10) ', (LA10(I,J), I=1,10)
       END DO

       DO J=2,15
        DO I1=2,J
         IF (DA20(I1,J) .LT. DA40(I1,J)) THEN
          LA20(J,I1) = .TRUE.
         END IF
         DB30(I1,J,2) = DB30(I1,J,1) * DA30(I1,J)
        END DO
       END DO
       DD8 = DC20(1)
       DO I1=2,12,4
        DD8 = DD8 + DB30(I1,2,1)
        DD8 = DD8 + DB30(I1+1,2,1)
        DD8 = DD8 + DB30(I1+2,2,1)
        DD8 = DD8 + DB30(I1+3,2,1)
       END DO
       DO I1=14,15,1
        DD8 = DD8 + DB30(I1,2,1)
       END DO
       DC20(1) = DD8
       DO I1=2,15
        II3 = (16 - I1) / 4
        II2 = I1 + II3 * 4
        DO J=I1,12,4
         DA20(I1,J) = DA40(I1,J) + DA10(I1,J)
         DA20(I1,J+1) = DA40(I1,J+1) + DA10(I1,J+1)
         DA20(I1,J+2) = DA40(I1,J+2) + DA10(I1,J+2)
         DA20(I1,J+3) = DA40(I1,J+3) + DA10(I1,J+3)
        END DO
        DO J=II2,15,1
         DA20(I1,J) = DA40(I1,J) + DA10(I1,J)
        END DO
        DC10(I1) = DC20(I1) + DA20(15,I1) - DA20(2,I1)
       END DO
       DO J=2,15
        II1 = J - 1
        IF (II1 .GT. 0) THEN
         DD9 = DA10(1,J)
         II5 = (J - 1) / 4
         II4 = II5 * 4 + 2
         DO I1=2,J-3,4
          DD9 = DA20(I1,J-1) - DA40(I1,J+1)
          DD9 = DA20(I1+1,J-1) - DA40(I1+1,J+1)
          DD9 = DA20(I1+2,J-1) - DA40(I1+2,J+1)
          DD9 = DA20(I1+3,J-1) - DA40(I1+3,J+1)
         END DO
         DO I1=II4,J,1
          DD9 = DA20(I1,J-1) - DA40(I1,J+1)
         END DO
         DA10(1,J) = DD9
        END IF
       END DO
       WRITE (6, *) ' (DC10) ', (DC10(K), K=1,15)
       WRITE (6, *) ' (DC20) ', DC20(1)
       WRITE (6, *) (DA10(1,K), K=1,15)
       DO J=1,15
        WRITE (6, *) ' (DA20) ', (DA20(I,J), I=1,15)
       END DO
       DO J=1,15
        WRITE (6, *) ' (DB30) ', (DB30(I,J,2), I=1,15)
       END DO
       DO J=1,15
        WRITE (6, *) ' (LA20) ', (LA20(I,J), I=1,15)
       END DO

       DO I1=1,11,5
        DD11 = DC20(I1) + DC10(I1)
        DD12 = DC20(I1+1) + DC10(I1+1)
        DD13 = DC20(I1+2) + DC10(I1+2)
        DD14 = DC20(I1+3) + DC10(I1+3)
        DD10 = DC20(I1+4) + DC10(I1+4)
        DD21 = DD11 - DA10(I1,20)
        DD23 = DD12 - DA10(I1+1,20)
        DD25 = DD13 - DA10(I1+2,20)
        DD27 = DD14 - DA10(I1+3,20)
        DD29 = DD10 - DA10(I1+4,20)
        DD20 = DD21 * 2D0
        DD22 = DD23 * 2D0
        DD24 = DD25 * 2D0
        DD26 = DD27 * 2D0
        DD28 = DD29 * 2D0
        DC10(I1+4) = DD28
        DC10(I1+3) = DD26
        DC10(I1+2) = DD24
        DC10(I1+1) = DD22
        DC10(I1) = DD20
        DC20(I1+4) = DD29
        DC20(I1+3) = DD27
        DC20(I1+2) = DD25
        DC20(I1+1) = DD23
        DC20(I1) = DD21
       END DO
       DO J=2,15

        II7 = (16 - J) / 4
        II6 = J + II7 * 4
        DO I1=J,12,4
         DA10(J+1,I1) = DA40(I1+1,J+1) - DA30(I1,J)
         DA10(J+1,I1+1) = DA40(I1+2,J+1) - DA30(I1+1,J)
         DA10(J+1,I1+2) = DA40(I1+3,J+1) - DA30(I1+2,J)
         DA10(J+1,I1+3) = DA40(I1+4,J+1) - DA30(I1+3,J)
        END DO
        DO I1=II6,15,1
         DA10(J+1,I1) = DA40(I1+1,J+1) - DA30(I1,J)
        END DO
       END DO
       DO J=2,15

        II9 = (16 - J) / 4
        II8 = J + II9 * 4
        DO I1=J,12,4
         DA20(I1,J) = DA30(I1,J) + DA10(J,I1)
         DD34 = DA10(J,I1) + DA30(I1,J)
         DD30 = DA30(20,I1) + DA40(I1,J-1)
         DA20(I1+1,J) = DA30(I1+1,J) + DA10(J,I1+1)
         DD35 = DA10(J,I1+1) + DA30(I1+1,J)
         DD31 = DA30(20,I1+1) + DA40(I1+1,J-1)
         DA20(I1+2,J) = DA30(I1+2,J) + DA10(J,I1+2)
         DD36 = DA10(J,I1+2) + DA30(I1+2,J)
         DD32 = DA30(20,I1+2) + DA40(I1+2,J-1)
         DA20(I1+3,J) = DA30(I1+3,J) + DA10(J,I1+3)
         DD37 = DA10(J,I1+3) + DA30(I1+3,J)
         DD33 = DA30(20,I1+3) + DA40(I1+3,J-1)
         DA30(20,I1+3) = DD33
         DA40(I1+3,J) = DD37
         DA30(20,I1+2) = DD32
         DA40(I1+2,J) = DD36
         DA30(20,I1+1) = DD31
         DA40(I1+1,J) = DD35
         DA30(20,I1) = DD30
         DA40(I1,J) = DD34
        END DO
        DO I1=II8,15,1
         DA20(I1,J) = DA30(I1,J) + DA10(J,I1)
         DD39 = DA10(J,I1) + DA30(I1,J)
         DD38 = DA30(20,I1) + DA40(I1,J-1)
         DA30(20,I1) = DD38
         DA40(I1,J) = DD39
        END DO
       END DO
       DO J=2,15

        II11 = (16 - J) / 2
        II10 = J + II11 * 2
        DO I1=J,14,2
         DD40 = DB20(I1,J,2) + DB30(I1,J,2)
         DD41 = DB20(I1+1,J,2) + DB30(I1+1,J,2)
         DD42 = DB20(I1,J,4) + DB30(I1,J,4)
         DD43 = DB20(I1+1,J,4) + DB30(I1+1,J,4)
         DD44 = DB20(I1,J,6) + DB30(I1,J,6)
         DD45 = DB20(I1+1,J,6) + DB30(I1+1,J,6)
         DD46 = DB20(I1,J,8) + DB30(I1,J,8)
         DD47 = DB20(I1+1,J,8) + DB30(I1+1,J,8)
         DD48 = DB20(I1,J,10) + DB30(I1,J,10)
         DD49 = DB20(I1+1,J,10) + DB30(I1+1,J,10)
         DD15 = DB10(I1,J,3) * 2D0
         DD3 = DB10(I1+1,J,3) * 2D0
         DD16 = DB10(I1,J,5) * 2D0
         DD4 = DB10(I1+1,J,5) * 2D0
         DD17 = DB10(I1,J,7) * 2D0
         DD5 = DB10(I1+1,J,7) * 2D0
         DD18 = DB10(I1,J,9) * 2D0
         DD6 = DB10(I1+1,J,9) * 2D0
         DD19 = DB10(I1,J,11) * 2D0
         DD2 = DB10(I1+1,J,11) * 2D0
         DB20(I1,J+1,1) = DD15 - DA30(I1,2)
         DB20(I1+1,J+1,1) = DD3 - DA30(I1+1,2)
         DB20(I1,J+1,3) = DD16 - DA30(I1,4)
         DB20(I1+1,J+1,3) = DD4 - DA30(I1+1,4)
         DB20(I1,J+1,5) = DD17 - DA30(I1,6)
         DB20(I1+1,J+1,5) = DD5 - DA30(I1+1,6)
         DB20(I1,J+1,7) = DD18 - DA30(I1,8)
         DB20(I1+1,J+1,7) = DD6 - DA30(I1+1,8)
         DB20(I1,J+1,9) = DD19 - DA30(I1,10)
         DB20(I1+1,J+1,9) = DD2 - DA30(I1+1,10)
         DB10(I1+1,J,10) = DD49
         DB10(I1,J,10) = DD48
         DB10(I1+1,J,8) = DD47
         DB10(I1,J,8) = DD46
         DB10(I1+1,J,6) = DD45
         DB10(I1,J,6) = DD44
         DB10(I1+1,J,4) = DD43
         DB10(I1,J,4) = DD42
         DB10(I1+1,J,2) = DD41
         DB10(I1,J,2) = DD40
        END DO
        IF (15 .GE. II10) THEN
         DB10(II10,J,2) = DB20(II10,J,2) + DB30(II10,J,2)
         DB10(II10,J,4) = DB20(II10,J,4) + DB30(II10,J,4)
         DB10(II10,J,6) = DB20(II10,J,6) + DB30(II10,J,6)
         DB10(II10,J,8) = DB20(II10,J,8) + DB30(II10,J,8)
         DB10(II10,J,10) = DB20(II10,J,10) + DB30(II10,J,10)
         DD3 = DB10(II10,J,3) * 2D0
         DD4 = DB10(II10,J,5) * 2D0
         DD5 = DB10(II10,J,7) * 2D0
         DD6 = DB10(II10,J,9) * 2D0
         DD2 = DB10(II10,J,11) * 2D0
         DB20(II10,J+1,1) = DD3 - DA30(II10,2)
         DB20(II10,J+1,3) = DD4 - DA30(II10,4)
         DB20(II10,J+1,5) = DD5 - DA30(II10,6)
         DB20(II10,J+1,7) = DD6 - DA30(II10,8)
         DB20(II10,J+1,9) = DD2 - DA30(II10,10)
        END IF
       END DO
       WRITE (6, *) ' (DC10) ', (DC10(K), K=1,15)
       WRITE (6, *) ' (DC20) ', (DC20(K), K=1,15)
       WRITE (6, *) ' (DA30) ', (DA30(20,K), K=1,15)
       DO J=1,15
        WRITE (6, *) ' (DA10) ', (DA10(I,J), I=1,15)
        WRITE (6, *) ' (DA20) ', (DA20(I,J), I=1,15)
        WRITE (6, *) ' (DA40) ', (DA40(I,J), I=1,15)
        DO K1=1,10
         WRITE (6, *) ' (DB10) ', (DB10(I,J,K1), I=1,15)
         WRITE (6, *) ' (DB20) ', (DB20(I,J,K1), I=1,15)
        END DO
       END DO
C$OMP PARALLEL SHARED (LA10,LA20,DB10,DB30,LD10,LD20,DB20) PRIVATE (J,I1
C$OMP& ,K1)
C$OMP DO 
       DO J=1,20

        DO I1=1,20
         IF (LA10(I1,J) .OR. LA20(J,I1)) THEN
          LA10(I1,J) = .NOT.LA20(J,I1)
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K1=1,20
        DO J=1,18,3

         DO I1=1,20
          IF (DB10(I1,J,K1) .GT. DB30(I1,J,K1)) THEN
           LD10(I1,J,K1) = .NOT.LD20(I1,J,K1)
          END IF
          IF (DB20(I1,J,K1) .GT. DB30(I1,J,K1)) THEN
           LD20(I1,J,K1) = .NOT.LD10(I1,J,K1)
          END IF
          IF (DB10(I1,J+1,K1) .GT. DB30(I1,J+1,K1)) THEN
           LD10(I1,J+1,K1) = .NOT.LD20(I1,J+1,K1)
          END IF
          IF (DB20(I1,J+1,K1) .GT. DB30(I1,J+1,K1)) THEN
           LD20(I1,J+1,K1) = .NOT.LD10(I1,J+1,K1)
          END IF
          IF (DB10(I1,J+2,K1) .GT. DB30(I1,J+2,K1)) THEN
           LD10(I1,J+2,K1) = .NOT.LD20(I1,J+2,K1)
          END IF
          IF (DB20(I1,J+2,K1) .GT. DB30(I1,J+2,K1)) THEN
           LD20(I1,J+2,K1) = .NOT.LD10(I1,J+2,K1)
          END IF
         END DO
        END DO
        DO J=19,20,1

         DO I1=1,20
          IF (DB10(I1,J,K1) .GT. DB30(I1,J,K1)) THEN
           LD10(I1,J,K1) = .NOT.LD20(I1,J,K1)
          END IF
          IF (DB20(I1,J,K1) .GT. DB30(I1,J,K1)) THEN
           LD20(I1,J,K1) = .NOT.LD10(I1,J,K1)
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) '(LA10)', LA10
       WRITE (6, *) ' (LD10)', LD10
       WRITE (6, *) ' (LD20)', LD20

       STOP 
      END
