      PROGRAM MAIN
       REAL*8 DA(100), DB(100), DC(100), DD(100)
       REAL*4 RA(100), RB(100), RC(100), RD(100)
       LOGICAL LA(100), LB(100), LC(100), LD(100)
       INTEGER IN(5)
       DATA IN/10,20,30,40,50/ 

       N = 100
       CALL INIT (N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)

       CALL TEST1 (N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)

       CALL TEST2 (N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD,IN)

       CALL TEST3 (N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD)

       CALL TEST4 (N,DA,DB,DC,DD,RA,RB,RC,RD,LA,LB,LC,LD,IN)
       STOP 
      END

      SUBROUTINE INIT ( N, DA, DB, DC, DD, RA, RB, RC, RD, LA, LB, LC, 
     X  LD )
       REAL*8 DA(N), DB(N), DC(N), DD(N)
       REAL*4 RA(N), RB(N), RC(N), RD(N)
       LOGICAL LA(N), LB(N), LC(N), LD(N)
       INTEGER II4, II3, II2, II1

       II2 = N / 4
       II1 = II2 * 4 + 1
C$OMP PARALLEL IF (N .GT. 62) SHARED (N,DA,DB,DC,DD,RA,RB,RC,RD) 
C$OMP& PRIVATE (I)
C$OMP DO 
       DO I=1,N-3,4
        DA(I) = 0D0
        DA(I+1) = 0D0
        DA(I+2) = 0D0
        DA(I+3) = 0D0
        DB(I) = 1D0
        DB(I+1) = 1D0
        DB(I+2) = 1D0
        DB(I+3) = 1D0
        DC(I) = 2D0
        DC(I+1) = 2D0
        DC(I+2) = 2D0
        DC(I+3) = 2D0
        DD(I) = 3D0
        DD(I+1) = 3D0
        DD(I+2) = 3D0
        DD(I+3) = 3D0
        RA(I) = 0.
        RA(I+1) = 0.
        RA(I+2) = 0.
        RA(I+3) = 0.
        RB(I) = 1.
        RB(I+1) = 1.
        RB(I+2) = 1.
        RB(I+3) = 1.
        RC(I) = 2.
        RC(I+1) = 2.
        RC(I+2) = 2.
        RC(I+3) = 2.
        RD(I) = 3.
        RD(I+1) = 3.
        RD(I+2) = 3.
        RD(I+3) = 3.
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II1,N,1
        DA(I) = 0D0
        DB(I) = 1D0
        DC(I) = 2D0
        DD(I) = 3D0
        RA(I) = 0.
        RB(I) = 1.
        RC(I) = 2.
        RD(I) = 3.
       END DO
       II4 = (N + 1) / 8
       II3 = II4 * 8 + 1
C$OMP PARALLEL IF (N .GT. 123) SHARED (N,LA,LB,LC,LD) PRIVATE (J)
C$OMP DO 
       DO J=1,N-6,8
        LA(J) = .TRUE.
        LA(J+2) = .TRUE.
        LA(J+4) = .TRUE.
        LA(J+6) = .TRUE.
        LA(J+1) = .FALSE.
        LA(J+3) = .FALSE.
        LA(J+5) = .FALSE.
        LA(J+7) = .FALSE.
        LB(J) = .TRUE.
        LB(J+2) = .TRUE.
        LB(J+4) = .TRUE.
        LB(J+6) = .TRUE.
        LB(J+1) = .FALSE.
        LB(J+3) = .FALSE.
        LB(J+5) = .FALSE.
        LB(J+7) = .FALSE.
        LC(J) = .TRUE.
        LC(J+2) = .TRUE.
        LC(J+4) = .TRUE.
        LC(J+6) = .TRUE.
        LC(J+1) = .FALSE.
        LC(J+3) = .FALSE.
        LC(J+5) = .FALSE.
        LC(J+7) = .FALSE.
        LD(J) = .TRUE.
        LD(J+2) = .TRUE.
        LD(J+4) = .TRUE.
        LD(J+6) = .TRUE.
        LD(J+1) = .FALSE.
        LD(J+3) = .FALSE.
        LD(J+5) = .FALSE.
        LD(J+7) = .FALSE.
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J=II3,N,2
        LA(J) = .TRUE.
        LA(J+1) = .FALSE.
        LB(J) = .TRUE.
        LB(J+1) = .FALSE.
        LC(J) = .TRUE.
        LC(J+1) = .FALSE.
        LD(J) = .TRUE.
        LD(J+1) = .FALSE.
       END DO
       RETURN 
      END

      SUBROUTINE TEST1 ( N, DA, DB, DC, DD, RA, RB, RC, RD, LA, LB, LC, 
     X  LD )
       REAL*8 DA(N), DB(N), DC(N), DD(N)
       REAL*4 RA(N), RB(N), RC(N), RD(N)
       LOGICAL LA(N), LB(N), LC(N), LD(N)
       INTEGER II8, II7, II6, II5, II4, II3, II2, II1
       II2 = N / 4
       II1 = II2 * 4 + 1

       DO I=1,N
        IF (LA(I)) THEN
C$OMP PARALLEL IF (N .GT. 200) SHARED (N,DA,DB,DC) PRIVATE (J)
C$OMP DO 
         DO J=1,N-3,4
          DA(J) = DB(J) + DC(J)
          DA(J+1) = DB(J+1) + DC(J+1)
          DA(J+2) = DB(J+2) + DC(J+2)
          DA(J+3) = DB(J+3) + DC(J+3)
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         DO J=II1,N,1
          DA(J) = DB(J) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       II4 = N / 4
       II3 = II4 * 4 + 1

       DO I=1,N
        IF (LA(I)) THEN
C$OMP PARALLEL IF (N .GT. 200) SHARED (N,DA,DB,DC) PRIVATE (J)
C$OMP DO 
         DO J=1,N-3,4
          DA(J) = DB(J) + DC(J)
          DA(J+1) = DB(J+1) + DC(J+1)
          DA(J+2) = DB(J+2) + DC(J+2)
          DA(J+3) = DB(J+3) + DC(J+3)
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         DO J=II3,N,1
          DA(J) = DB(J) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       II6 = (N - 1) / 4
       II5 = II6 * 4 + 2

       DO I=1,N
        IF (LA(I)) THEN
         RA(I) = SQRT (RB(I)) + SQRT (RC(I))
         RA(I) = RA(I) ** 3
         DO J=2,N-3,4
          DA(J) = DA(J-1) + DC(J)
          DA(J+1) = DA(J) + DC(J+1)
          DA(J+2) = DA(J+1) + DC(J+2)
          DA(J+3) = DA(J+2) + DC(J+3)
         END DO
         DO J=II5,N,1
          DA(J) = DA(J-1) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) RA
       WRITE (6, *) DA
       II8 = (N - 1) / 4
       II7 = II8 * 4 + 2

       DO I=1,N
        IF (LA(I)) THEN
         DO J=2,N-3,4
          DA(J) = DA(J-1) + DC(J)
          DA(J+1) = DA(J) + DC(J+1)
          DA(J+2) = DA(J+1) + DC(J+2)
          DA(J+3) = DA(J+2) + DC(J+3)
         END DO
         DO J=II7,N,1
          DA(J) = DA(J-1) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       RETURN 
      END

      SUBROUTINE TEST2 ( N, DA, DB, DC, DD, RA, RB, RC, RD, LA, LB, LC, 
     X  LD, IN )
       REAL*8 DA(N), DB(N), DC(N), DD(N)
       REAL*4 RA(N), RB(N), RC(N), RD(N)
       LOGICAL LA(N), LB(N), LC(N), LD(N)
       INTEGER IN(5)
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       II1 = IN(2)
       II4 = II1 / 4
       II3 = II4 * 4 + 1

                                                  
       DO I=1,IN(1)
        IF (LA(I)) THEN
                                                  
C$OMP PARALLEL IF (II1 .GT. 200) SHARED (II1,DA,DB,DC) PRIVATE (J)
C$OMP DO 
         DO J=1,II1-3,4
          DA(J) = DB(J) + DC(J)
          DA(J+1) = DB(J+1) + DC(J+1)
          DA(J+2) = DB(J+2) + DC(J+2)
          DA(J+3) = DB(J+3) + DC(J+3)
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         DO J=II3,II1,1
          DA(J) = DB(J) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       II2 = IN(4)
       II6 = II2 / 4
       II5 = II6 * 4 + 1

       DO I=1,IN(3)
        IF (LB(I)) THEN
                                                  
C$OMP PARALLEL IF (II2 .GT. 200) SHARED (II2,DA,DB,DC) PRIVATE (J)
C$OMP DO 
         DO J=1,II2-3,4
          DA(J) = DB(J) + DC(J)
          DA(J+1) = DB(J+1) + DC(J+1)
          DA(J+2) = DB(J+2) + DC(J+2)
          DA(J+3) = DB(J+3) + DC(J+3)
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         DO J=II5,II2,1
          DA(J) = DB(J) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       II8 = (IN(1) - 1) / 4
       II7 = II8 * 4 + 2

       DO I=1,IN(5)
        IF (LA(I)) THEN
         RA(I) = SQRT (RB(I)) + SQRT (RC(I))
         RA(I) = RA(I) ** 3
                                                  
         DO J=2,IN(1)-3,4
          DA(J) = DA(J-1) + DC(J)
          DA(J+1) = DA(J) + DC(J+1)
          DA(J+2) = DA(J+1) + DC(J+2)
          DA(J+3) = DA(J+2) + DC(J+3)
         END DO
         DO J=II7,IN(1),1
          DA(J) = DA(J-1) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) RA
       WRITE (6, *) DA
       II10 = (IN(4) - 1) / 4
       II9 = II10 * 4 + 2

       DO I=1,IN(3)
        IF (LC(I)) THEN
                                                  
         DO J=2,IN(4)-3,4
          DA(J) = DA(J-1) + DC(J)
          DA(J+1) = DA(J) + DC(J+1)
          DA(J+2) = DA(J+1) + DC(J+2)
          DA(J+3) = DA(J+2) + DC(J+3)
         END DO
         DO J=II9,IN(4),1
          DA(J) = DA(J-1) + DC(J)
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       RETURN 
      END

      SUBROUTINE TEST3 ( N, DA, DB, DC, DD, RA, RB, RC, RD, LA, LB, LC, 
     X  LD )
       REAL*8 DA(N), DB(N), DC(N), DD(N)
       REAL*4 RA(N), RB(N), RC(N), RD(N)
       LOGICAL LA(N), LB(N), LC(N), LD(N)
       INTEGER II2, II1
       II2 = N / 4
       II1 = II2 * 4 + 1

       DO I=1,N
        IF (LA(I)) THEN
         DO J=1,N
          IF (LB(J)) THEN
           DO K=1,N
            IF (LC(K)) THEN
C$OMP PARALLEL IF (N .GT. 200) SHARED (N,DA,DB,DC) PRIVATE (L)
C$OMP DO 
             DO L=1,N-3,4
              DA(L) = DB(L) + DC(L)
              DA(L+1) = DB(L+1) + DC(L+1)
              DA(L+2) = DB(L+2) + DC(L+2)
              DA(L+3) = DB(L+3) + DC(L+3)
             END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
             DO L=II1,N,1
              DA(L) = DB(L) + DC(L)
             END DO
            END IF
           END DO
          END IF
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       RETURN 
      END

      SUBROUTINE TEST4 ( N, DA, DB, DC, DD, RA, RB, RC, RD, LA, LB, LC, 
     X  LD, IN )
       REAL*8 DA(N), DB(N), DC(N), DD(N)
       REAL*4 RA(N), RB(N), RC(N), RD(N)
       LOGICAL LA(N), LB(N), LC(N), LD(N)
       INTEGER IN(5)
       INTEGER II3, II2, II1
       II1 = IN(4)
       II3 = II1 / 4
       II2 = II3 * 4 + 1

                                                   
       DO I=1,IN(1)
        IF (LA(I)) THEN
                                                   
         DO J=1,IN(2)
          IF (LB(J)) THEN
                                                   
           DO K=1,IN(3)
            IF (LC(K)) THEN
                                                   
C$OMP PARALLEL IF (II1 .GT. 200) SHARED (II1,DA,DB,DC) PRIVATE (L)
C$OMP DO 
             DO L=1,II1-3,4
              DA(L) = DB(L) + DC(L)
              DA(L+1) = DB(L+1) + DC(L+1)
              DA(L+2) = DB(L+2) + DC(L+2)
              DA(L+3) = DB(L+3) + DC(L+3)
             END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
             DO L=II2,II1,1
              DA(L) = DB(L) + DC(L)
             END DO
            END IF
           END DO
          END IF
         END DO
        END IF
       END DO
       WRITE (6, *) DA
       RETURN 
      END
