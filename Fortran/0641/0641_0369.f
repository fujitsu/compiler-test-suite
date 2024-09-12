      PROGRAM MAIN
       REAL*4 R4S1(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./ 
       DATA R4S1/10*0.0/ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4S1/10*.FALSE./ 
       REAL RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, 
     X   RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL14, LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, 
     X   LL4, LL3, LL2, LL1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1(1) = I
         IF (R4S1(1) + R4A1(I) .EQ. -1.) THEN
          L4S1(2) = .FALSE.
         ELSE
          L4S1(2) = .TRUE.
         END IF
         IF (R4A1(I) * I .EQ. 0.) THEN
          L4S1(3) = .FALSE.
         ELSE
          L4S1(3) = .TRUE.
         END IF
         L4S1(1) = .TRUE.
         L4S1(2) = .FALSE.
         L4S1(3) = L4A1(I) .AND. L4A2(I)
         L4S1(4) = .NOT.L4S1(3)
         L4S1(5) = FLOAT (I) .EQ. R4A1(I)
        ELSE
         R4S1(1) = I
         IF (R4S1(1) + R4A1(I) .EQ. -1.) THEN
          L4S1(2) = .FALSE.
         ELSE
          L4S1(2) = .TRUE.
         END IF
         IF (R4A1(I) * I .EQ. 0.) THEN
          L4S1(3) = .FALSE.
         ELSE
          L4S1(3) = .TRUE.
         END IF
         L4S1(1) = .TRUE.
         L4S1(2) = .FALSE.
         L4S1(3) = L4A1(I) .AND. L4A2(I)
         L4S1(4) = .NOT.L4S1(3)
         L4S1(5) = FLOAT (I) .EQ. R4A1(I)
        END IF
       END DO
       WRITE (6, *) '** TEST NO. 1 ***'
       WRITE (6, 1000) R4S1
       WRITE (6, 1000) L4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4A1(I) = R4S1(1)
         R4A2(I) = R4S1(2)
         R4S1(1) = R4A2(I)
         R4A1(I) = R4S1(1)
         L4A1(I) = L4S1(1)
         L4A2(I) = L4S1(2)
         L4S1(3) = L4A1(I) .AND. L4A2(I)
         L4A1(I) = L4S1(4)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 **'
       WRITE (6, 1000) R4A1, R4A2, R4S1
       WRITE (6, 1000) L4A1, L4A2, L4S1

       DO I=1,10
        IF (L4A2(I)) THEN
         R4S1(1) = 1. + R4A1(I) + R4A2(I)
         R4A1(I) = 1. + R4S1(2)
         R4S1(3) = R4A1(I) + R4A2(I)
         L4A1(I) = .NOT.L4S1(1)
         L4S1(4) = L4A1(I) .OR. L4A2(I)
         L4A2(I) = L4S1(1) .AND. L4S1(2)
         L4S1(5) = .NOT.L4A2(I)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 3 **'
       WRITE (6, 1000) R4S1, R4A1
       WRITE (6, 1000) L4A1, L4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4A1(I) = R4S1(1)
         R4S1(2) = R4A2(I)
         R4A1(I) = R4S1(3) + R4A2(I)
         L4A1(I) = L4S1(1)
         L4S1(4) = .NOT.L4A1(I)
         L4S1(5) = L4S1(6) .AND. L4A2(I)
         L4A1(I) = L4S1(1) .AND. L4S1(2)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 4 **'
       WRITE (6, 1000) R4A1, R4S1, L4A1, L4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         RR5 = FLOAT (I)
         LL3 = L4S1(6)
         LL4 = L4S1(5)
         DO J=1,6,5
          RR1 = R4A1(J)
          RR2 = I
          RR3 = J
          RR4 = RR2 + RR3
          LL1 = RR5 .EQ. R4A1(J)
          LL2 = FLOAT (J) .EQ. R4A1(J)
          LL5 = LL4 .AND. LL3
          LL6 = L4A1(J) .AND. LL1
          RR1 = R4A1(J+1)
          RR2 = I
          RR3 = J + 1
          RR4 = RR2 + RR3
          LL1 = RR5 .EQ. R4A1(J+1)
          LL2 = FLOAT (J + 1) .EQ. R4A1(J+1)
          LL5 = LL4 .AND. LL3
          LL6 = L4A1(J+1) .AND. LL1
          RR1 = R4A1(J+2)
          RR2 = I
          RR3 = J + 2
          RR4 = RR2 + RR3
          LL1 = RR5 .EQ. R4A1(J+2)
          LL2 = FLOAT (J + 2) .EQ. R4A1(J+2)
          LL5 = LL4 .AND. LL3
          LL6 = L4A1(J+2) .AND. LL1
          RR1 = R4A1(J+3)
          RR2 = I
          RR3 = J + 3
          RR4 = RR2 + RR3
          LL1 = RR5 .EQ. R4A1(J+3)
          LL2 = FLOAT (J + 3) .EQ. R4A1(J+3)
          LL5 = LL4 .AND. LL3
          LL6 = L4A1(J+3) .AND. LL1
          RR1 = R4A1(J+4)
          RR2 = I
          RR3 = J + 4
          RR4 = RR2 + RR3
          LL1 = RR5 .EQ. R4A1(J+4)
          LL2 = FLOAT (J + 4) .EQ. R4A1(J+4)
          LL5 = LL4 .AND. LL3
          LL6 = L4A1(J+4) .AND. LL1
         END DO
         R4S1(1) = RR1
         R4S1(2) = RR2
         R4S1(3) = RR3
         R4S1(4) = RR4
         L4S1(1) = LL1
         L4S1(2) = LL2
         L4S1(3) = LL5
         L4S1(4) = LL6
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 5 **'
       WRITE (6, 1000) R4S1, L4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1(1) = R4A1(I)
         R4S1(2) = I
         L4S1(1) = L4A1(I)
         L4S1(2) = FLOAT (I) .EQ. R4A1(I)
         IF (L4A1(I)) THEN
          LL7 = L4S1(1)
          DO J=1,6,5
           RR6 = R4A1(J) * 2.
           LL8 = LL7 .AND. L4A1(J)
           LL9 = LL7 .OR. L4A1(J)
           RR6 = R4A1(J+1) * 2.
           LL8 = LL7 .AND. L4A1(J+1)
           LL9 = LL7 .OR. L4A1(J+1)
           RR6 = R4A1(J+2) * 2.
           LL8 = LL7 .AND. L4A1(J+2)
           LL9 = LL7 .OR. L4A1(J+2)
           RR6 = R4A1(J+3) * 2.
           LL8 = LL7 .AND. L4A1(J+3)
           LL9 = LL7 .OR. L4A1(J+3)
           RR6 = R4A1(J+4) * 2.
           LL8 = LL7 .AND. L4A1(J+4)
           LL9 = LL7 .OR. L4A1(J+4)
          END DO
          R4S1(3) = RR6
          L4S1(3) = LL8
          L4S1(4) = LL9
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 6 **'
       WRITE (6, 1000) R4S1, L4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4A1(I) = R4S1(1)
         L4A1(I) = L4S1(1)
         L4A2(I) = L4S1(1) .AND. L4S1(2)
         IF (L4A2(I)) THEN
          RR8 = R4A1(I)
          LL13 = L4A1(I)
          LL12 = .NOT.L4A2(I)
          DO J=1,6,5
           RR7 = R4A1(J)
           LL10 = L4A1(J)
           LL11 = FLOAT (J) .EQ. RR8
           LL14 = LL13 .AND. L4A2(J)
           RR7 = R4A1(J+1)
           LL10 = L4A1(J+1)
           LL11 = FLOAT (J + 1) .EQ. RR8
           LL14 = LL13 .AND. L4A2(J+1)
           RR7 = R4A1(J+2)
           LL10 = L4A1(J+2)
           LL11 = FLOAT (J + 2) .EQ. RR8
           LL14 = LL13 .AND. L4A2(J+2)
           RR7 = R4A1(J+3)
           LL10 = L4A1(J+3)
           LL11 = FLOAT (J + 3) .EQ. RR8
           LL14 = LL13 .AND. L4A2(J+3)
           RR7 = R4A1(J+4)
           LL10 = L4A1(J+4)
           LL11 = FLOAT (J + 4) .EQ. RR8
           LL14 = LL13 .AND. L4A2(J+4)
          END DO
          R4S1(3) = RR7
          L4S1(3) = LL10
          L4S1(4) = LL11
          L4S1(5) = LL12
          L4S1(6) = LL14
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 7 **'
       WRITE (6, 1000) R4A1, L4A1, L4A2, R4S1, L4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         DO J=1,6,5
          RR9 = 1. + R4A1(J)
          RR9 = 1. + R4A1(J+1)
          RR9 = 1. + R4A1(J+2)
          RR9 = 1. + R4A1(J+3)
          RR9 = 1. + R4A1(J+4)
         END DO
         R4S1(1) = RR9
        END IF
        IF (L4A2(I)) THEN
         DO K=1,6,5
          RR10 = R4A1(K) + R4A2(K)
          RR10 = R4A1(K+1) + R4A2(K+1)
          RR10 = R4A1(K+2) + R4A2(K+2)
          RR10 = R4A1(K+3) + R4A2(K+3)
          RR10 = R4A1(K+4) + R4A2(K+4)
         END DO
         R4S1(1) = RR10
        END IF
       END DO

       WRITE (6, *) '**TEST NO. 8 **'
       WRITE (6, 1000) R4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         DO J=1,6,5
          RR11 = 1. + R4A1(J)
          RR11 = 1. + R4A1(J+1)
          RR11 = 1. + R4A1(J+2)
          RR11 = 1. + R4A1(J+3)
          RR11 = 1. + R4A1(J+4)
         END DO
         R4S1(1) = RR11
        END IF
        IF (L4A2(I)) THEN
         RR12 = R4S1(1)
         DO K=1,6,5
          R4A1(K) = RR12
          R4A1(K+1) = RR12
          R4A1(K+2) = RR12
          R4A1(K+3) = RR12
          R4A1(K+4) = RR12
         END DO
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 9 **'
       WRITE (6, 1000) R4S1, R4A1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1(1) = 1. + R4A1(I)
         IF (L4A2(I)) THEN
          IF (L4A1(I)) THEN
           DO J=1,10
            DO K=1,6,5
             RR13 = R4A1(K)
             RR13 = R4A1(K+1)
             RR13 = R4A1(K+2)
             RR13 = R4A1(K+3)
             RR13 = R4A1(K+4)
            END DO
            RR14 = RR13
           END DO
           R4S1(1) = RR14
          ELSE
           DO J=1,10
            RR15 = J
           END DO
           R4S1(1) = RR15
          END IF
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 10 **'
       WRITE (6, 1000) R4S1

       DO I=1,10
        IF (L4A1(I)) THEN
         R4S1(1) = R4A1(I)
         IF (L4A2(I)) THEN
          IF (L4A1(I)) THEN
           RR17 = R4S1(1)
           DO J=1,10
            R4A1(J) = RR17
            DO K=1,6,5
             RR16 = R4A1(K)
             RR16 = R4A1(K+1)
             RR16 = R4A1(K+2)
             RR16 = R4A1(K+3)
             RR16 = R4A1(K+4)
            END DO
            RR17 = RR16
           END DO
           R4S1(1) = RR17
          ELSE
           RR18 = R4S1(1)
           DO J=1,6,5
            R4A1(J) = RR18
            R4A1(J+1) = RR18
            R4A1(J+2) = RR18
            R4A1(J+3) = RR18
            R4A1(J+4) = RR18
           END DO
          END IF
         END IF
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 11 **'
       WRITE (6, 1000) R4S1, R4A1
 1000  FORMAT(' ',(6G13.6))


       STOP 
      END
