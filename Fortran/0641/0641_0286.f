      PROGRAM MAIN

       REAL*8 DA(10,10), DB(10,10), DC(10,10)
       REAL*4 RA(10,10), RB(10,10), RC(10,10)
       LOGICAL LA(10), LB(10), LC(10)

       N = 10
       CALL INIT (N,DA,DB,DC,RA,RB,RC,LA,LB,LC)

       CALL TEST1 (N,DA,DB,DC,RA,RB,RC,LA,LB,LC)

       CALL TEST2 (N,DA,DB,DC,RA,RB,RC,LA,LB,LC)

       CALL TEST3 (N,DA,DB,DC,RA,RB,RC,LA,LB,LC)

       CALL TEST4 (N,DA,DB,DC,RA,RB,RC,LA,LB,LC)

       WRITE (6, *) RA
       WRITE (6, *) DA
       STOP 
      END

      SUBROUTINE INIT ( N, DA, DB, DC, RA, RB, RC, LA, LB, LC )

       REAL*8 DA(N,N), DB(N,N), DC(N,N)
       REAL*4 RA(N,N), RB(N,N), RC(N,N)
       LOGICAL LA(N), LB(N), LC(N)
       INTEGER II4, II3, II2, II1
       LOGICAL LL5, LL4, LL3, LL2, LL1
       II2 = N / 4
       II1 = II2 * 4 + 1

C$OMP PARALLEL SHARED (N,DA,DB,DC,RA,RB,RC,II1,LB,LC,LA,II4,II3) 
C$OMP& PRIVATE (I,J,LL1,LL2,LL3,LL4)
C$OMP DO 
       DO I=1,N
        DO J=1,N-3,4
         DA(J,I) = I + J
         DA(J+1,I) = I + J + 1
         DA(J+2,I) = I + J + 2
         DA(J+3,I) = I + J + 3
         DB(J,I) = I - J
         DB(J+1,I) = I - J - 1
         DB(J+2,I) = I - J - 2
         DB(J+3,I) = I - J - 3
         DC(J,I) = I * J
         DC(J+1,I) = I * (J + 1)
         DC(J+2,I) = I * (J + 2)
         DC(J+3,I) = I * (J + 3)
         RA(J,I) = I + J
         RA(J+1,I) = I + J + 1
         RA(J+2,I) = I + J + 2
         RA(J+3,I) = I + J + 3
         RB(J,I) = I - J
         RB(J+1,I) = I - J - 1
         RB(J+2,I) = I - J - 2
         RB(J+3,I) = I - J - 3
         RC(J,I) = I * J
         RC(J+1,I) = I * (J + 1)
         RC(J+2,I) = I * (J + 2)
         RC(J+3,I) = I * (J + 3)
        END DO
        DO J=II1,N,1
         DA(J,I) = I + J
         DB(J,I) = I - J
         DC(J,I) = I * J
         RA(J,I) = I + J
         RB(J,I) = I - J
         RC(J,I) = I * J
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP SINGLE 
       II4 = (N + 1) / 8
       II3 = II4 * 8 + 1
C$OMP END SINGLE NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I=1,N-6,8
        LL1 = .TRUE.
        LL2 = .TRUE.
        LL3 = .TRUE.
        LL4 = .TRUE.
        LB(I) = .FALSE.
        LB(I+2) = .FALSE.
        LB(I+4) = .FALSE.
        LB(I+6) = .FALSE.
        LC(I) = LL1
        LC(I+2) = LL2
        LC(I+4) = LL3
        LC(I+6) = LL4
        LA(I+1) = .FALSE.
        LA(I+3) = .FALSE.
        LA(I+5) = .FALSE.
        LA(I+7) = .FALSE.
        LB(I+1) = .TRUE.
        LB(I+3) = .TRUE.
        LB(I+5) = .TRUE.
        LB(I+7) = .TRUE.
        LC(I+1) = LL1
        LC(I+3) = LL2
        LC(I+5) = LL3
        LC(I+7) = LL4
        LA(I+6) = LL4
        LA(I+4) = LL3
        LA(I+2) = LL2
        LA(I) = LL1
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II3,N,2
        LL5 = .TRUE.
        LB(I) = .FALSE.
        LC(I) = LL5
        LA(I+1) = .FALSE.
        LB(I+1) = .TRUE.
        LC(I+1) = LL5
        LA(I) = LL5
       END DO
       RETURN 
      END

      SUBROUTINE TEST1 ( N, DA, DB, DC, RA, RB, RC, LA, LB, LC )

       REAL*8 DA(N,N), DB(N,N), DC(N,N)
       REAL*4 RA(N,N), RB(N,N), RC(N,N)
       LOGICAL LA(N), LB(N), LC(N)
       INTEGER II2, II1
       LOGICAL LL2, LL1

C$OMP PARALLEL IF (N .GT. 125) SHARED (N,LA,LB,DA,DB,DC,RA,RB,RC) 
C$OMP& PRIVATE (I,J)
C$OMP DO 
       DO I=1,N
        IF (.NOT.LA(I)) THEN
         IF (.NOT.LB(I)) THEN
          DA(I,I) = DB(I,I) + DC(I,I)
         END IF
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO J=1,N
        IF (LA(J)) THEN
         IF (LB(5)) THEN
          RA(J,J) = RB(J,J) + RC(J,J)
         END IF
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       IF (LA(5)) THEN


C$OMP PARALLEL IF (N .GT. 166) SHARED (N,LB,RA,RB,RC) PRIVATE (J)
C$OMP DO 
        DO J=1,N
         IF (LB(J)) THEN
          RA(J,J) = RB(J,J) * RC(J,J)
         END IF
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       END IF
       IF (LA(4)) THEN
        IF (LB(6)) THEN


         II2 = N / 4
         II1 = II2 * 4 + 1
C$OMP PARALLEL IF (N .GT. 200) SHARED (N,RA,RB,RC) PRIVATE (J)
C$OMP DO 
         DO J=1,N-3,4
          RA(J,J) = RB(J,J) * RC(J,J)
          RA(J+1,J+1) = RB(J+1,J+1) * RC(J+1,J+1)
          RA(J+2,J+2) = RB(J+2,J+2) * RC(J+2,J+2)
          RA(J+3,J+3) = RB(J+3,J+3) * RC(J+3,J+3)
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         DO J=II1,N,1
          RA(J,J) = RB(J,J) * RC(J,J)
         END DO
        END IF
       END IF


C$OMP PARALLEL IF (N .GT. 100) SHARED (N,LA,LB,LC,DA,DB,DC,RA,RB,RC) 
C$OMP& PRIVATE (I,LL1,LL2)
C$OMP DO 
       DO I=1,N
        IF (LA(I)) THEN
         IF (LB(I)) THEN
          GO TO 9
         END IF
         GO TO 11
        END IF
        IF (LC(I)) THEN
         GO TO 11
        END IF
    9   DA(I,I) = DB(I,I) + DC(I,I)
   11   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       LL1 = LA(2)
       LL2 = LC(3)


C$OMP DO 
       DO I=1,N
        IF (LL1) THEN
         IF (LB(3)) THEN
          GO TO 12
         END IF
         GO TO 13
        END IF
        IF (LL2) THEN
         GO TO 13
        END IF
   12   DA(I,I) = DB(I,I) * DC(I,I)
   13   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO I=1,N
        IF (LA(I)) THEN
         IF (LB(3)) THEN
          GO TO 14
         END IF
         GO TO 15
        END IF
        IF (LC(I)) THEN
         GO TO 15
        END IF
   14   RA(I,I) = RB(I,I) - RC(I,I)
   15   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END

      SUBROUTINE TEST2 ( N, DA, DB, DC, RA, RB, RC, LA, LB, LC )

       REAL*8 DA(N,N), DB(N,N), DC(N,N)
       REAL*4 RA(N,N), RB(N,N), RC(N,N)
       LOGICAL LA(N), LB(N), LC(N)

C$OMP PARALLEL IF (N .GT. 13) SHARED (N,LA,LB,LC,DA,DB,DC,RA,RB,RC) 
C$OMP& PRIVATE (I,J)
C$OMP DO 
       DO I=1,N
        IF (LA(I)) THEN
         IF (LB(3)) THEN
          GO TO 3
         END IF
         GO TO 6
        END IF
        IF (LC(I)) THEN
         GO TO 6
        END IF

    3   DO J=1,N
         IF (LA(J)) THEN
          IF (LB(I)) THEN
           GO TO 4
          END IF
          GO TO 5
         END IF
         IF (LC(J)) THEN
          GO TO 5
         END IF
    4    DA(J,I) = DB(J,I) + DC(J,I)
         RA(J,I) = RB(J,I) + RC(J,I)
    5    CONTINUE
        END DO
    6   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END

      SUBROUTINE TEST3 ( N, DA, DB, DC, RA, RB, RC, LA, LB, LC )

       REAL*8 DA(N,N), DB(N,N), DC(N,N)
       REAL*4 RA(N,N), RB(N,N), RC(N,N)
       LOGICAL LA(N), LB(N), LC(N)
       INTEGER II2, II1
       LOGICAL LL2, LL1

C$OMP PARALLEL IF (N .GT. 125) SHARED (N,LA,LB,DA,DB,DC,RA,RB,RC) 
C$OMP& PRIVATE (I,J)
C$OMP DO 
       DO I=1,N
        IF (.NOT.LA(I)) THEN
         IF (.NOT.LB(I)) THEN
          DA(I,I) = DB(I,I) + DC(I,I)
         END IF
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO J=1,N
        IF (LA(J)) THEN
         IF (LB(5)) THEN
          RA(J,J) = RB(J,J) + RC(J,J)
         END IF
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       IF (LA(5)) THEN


C$OMP PARALLEL IF (N .GT. 166) SHARED (N,LB,RA,RB,RC) PRIVATE (J)
C$OMP DO 
        DO J=1,N
         IF (LB(J)) THEN
          RA(J,J) = RB(J,J) * RC(J,J)
         END IF
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       END IF

       IF (LA(4)) THEN
        IF (LB(6)) THEN

         II2 = N / 4
         II1 = II2 * 4 + 1
C$OMP PARALLEL IF (N .GT. 200) SHARED (N,RA,RB,RC) PRIVATE (J)
C$OMP DO 
         DO J=1,N-3,4
          RA(J,J) = RB(J,J) * RC(J,J)
          RA(J+1,J+1) = RB(J+1,J+1) * RC(J+1,J+1)
          RA(J+2,J+2) = RB(J+2,J+2) * RC(J+2,J+2)
          RA(J+3,J+3) = RB(J+3,J+3) * RC(J+3,J+3)
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         DO J=II1,N,1
          RA(J,J) = RB(J,J) * RC(J,J)
         END DO
        END IF
       END IF


C$OMP PARALLEL IF (N .GT. 100) SHARED (N,LA,LB,LC,DA,DB,DC,RA,RB,RC) 
C$OMP& PRIVATE (I,LL1,LL2)
C$OMP DO 
       DO I=1,N
        IF (LA(I)) THEN
         IF (LB(I)) THEN
          GO TO 9
         END IF
         GO TO 11
        END IF

        IF (LC(I)) THEN
         GO TO 11
        END IF
    9   DA(I,I) = DB(I,I) + DC(I,I)
   11   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       LL1 = LA(2)
       LL2 = LC(3)


C$OMP DO 
       DO I=1,N
        IF (LL1) THEN
         IF (LB(3)) THEN
          GO TO 12
         END IF
         GO TO 13
        END IF
        IF (LL2) THEN
         GO TO 13
        END IF
   12   DA(I,I) = DB(I,I) + DC(I,I)
   13   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO I=1,N
        IF (LA(I)) THEN
         IF (LB(3)) THEN
          GO TO 14
         END IF
         GO TO 15
        END IF
        IF (LC(I)) THEN
         GO TO 15
        END IF
   14   RA(I,I) = RB(I,I) - RC(I,I)
   15   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END

      SUBROUTINE TEST4 ( N, DA, DB, DC, RA, RB, RC, LA, LB, LC )

       REAL*8 DA(N,N), DB(N,N), DC(N,N)
       REAL*4 RA(N,N), RB(N,N), RC(N,N)
       LOGICAL LA(N), LB(N), LC(N)


C$OMP PARALLEL IF (N .GT. 13) SHARED (N,LA,LB,LC,DA,DB,DC,RA,RB,RC) 
C$OMP& PRIVATE (I,J)
C$OMP DO 
       DO I=1,N
        IF (LA(I)) THEN
         IF (LB(3)) THEN
          GO TO 3
         END IF
         GO TO 6
        END IF
        IF (LC(I)) THEN
         GO TO 6
        END IF

    3   DO J=1,N
         IF (LA(J)) THEN
          IF (LB(I)) THEN
           GO TO 4
          END IF
          GO TO 5
         END IF
         IF (LC(J)) THEN
          GO TO 5
         END IF
    4    DA(J,I) = DB(J,I) + DC(J,I)
         RA(J,I) = RB(J,I) * RC(J,I)
    5    CONTINUE
        END DO
    6   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END
