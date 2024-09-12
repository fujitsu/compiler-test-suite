      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), INTEGER*4 (I)
       DIMENSION DA10(30), DA20(30), DA30(30), DB10(20,20), DB20(20,20),
     X    DB30(20,20), DC10(20,20,20), DC20(20,20,20), DC30(20,20,20)
       DIMENSION LD10(30), LD20(20,20), LD30(20,20,20)
       DIMENSION IL10(30), IL20(20,20), IL30(20,20,20)
       INTEGER IT3, IT2, IT1
       PARAMETER (IT3 = 3, IT2 = 2, IT1 = 1)
       DATA DA10/30*1.D0/ 
       DATA DA20/30*2.D0/ 
       DATA DA30/30*3.D0/ 
       DATA DB10/400*1.D0/ 
       DATA DB20/400*2.D0/ 
       DATA DB30/400*4.D0/ 
       DATA DC20/8000*5.D0/ 
       DATA DC10/8000*1.D0/ 
       DATA DC30/8000*2.D0/ 
       DATA LD10/30*.FALSE./ 
       DATA LD20/400*.FALSE./ 
       DATA LD30/8000*.FALSE./ 
       INTEGER II19, II18, II17, II16, II15, II14, II13, II12, II11, 
     X   II10, II9, II8, II7, II6, II5, II4, II3, II2, I21, II1, K1, J1
     X   , I4
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
                                                       
       DO I4=1,26,5
        IL10(I4) = I4
        IL10(I4+1) = I4 + 1
        IL10(I4+2) = I4 + 2
        IL10(I4+3) = I4 + 3
        IL10(I4+4) = I4 + 4
       END DO
                                            
       DO I4=2,12,4
        DA10(IL10(I4)) = DA20(IL10(I4)) + DA30(IL10(I4))
        DA30(IL10(I4)) = DA10(I4-1) * DA30(IL10(I4))
        DA10(IL10(I4+1)) = DA20(IL10(I4+1)) + DA30(IL10(I4+1))
        DA30(IL10(I4+1)) = DA10(I4) * DA30(IL10(I4+1))
        DA10(IL10(I4+2)) = DA20(IL10(I4+2)) + DA30(IL10(I4+2))
        DA30(IL10(I4+2)) = DA10(I4+1) * DA30(IL10(I4+2))
        DA10(IL10(I4+3)) = DA20(IL10(I4+3)) + DA30(IL10(I4+3))
        DA30(IL10(I4+3)) = DA10(I4+2) * DA30(IL10(I4+3))
       END DO
       DO I4=14,15,1
        DA10(IL10(I4)) = DA20(IL10(I4)) + DA30(IL10(I4))
        DA30(IL10(I4)) = DA10(I4-1) * DA30(IL10(I4))
       END DO
                                            
       DO I4=2,15
        II7 = (19 - I4) / 4
        II6 = II7 * 4 + 3
        DO J1=3,18-I4,4
         DB10(I4,J1) = DB20(I4+1,J1) + DB30(I4,J1+1)
         DB10(I4,J1+1) = DB20(I4+1,J1+1) + DB30(I4,J1+2)
         DB10(I4,J1+2) = DB20(I4+1,J1+2) + DB30(I4,J1+3)
         DB10(I4,J1+3) = DB20(I4+1,J1+3) + DB30(I4,J1+4)
        END DO
        DO J1=II6,21-I4,1
         DB10(I4,J1) = DB20(I4+1,J1) + DB30(I4,J1+1)
        END DO
       END DO
                                            
       DO I4=2,15
        II9 = (19 - I4) / 4
        II8 = II9 * 4 + 3
        DO J1=3,18-I4,4
         DB20(I4,J1) = DB10(I4,J1-1) + DB30(I4+1,J1)
         DB20(I4,J1+1) = DB10(I4,J1) + DB30(I4+1,J1+1)
         DB20(I4,J1+2) = DB10(I4,J1+1) + DB30(I4+1,J1+2)
         DB20(I4,J1+3) = DB10(I4,J1+2) + DB30(I4+1,J1+3)
        END DO
        DO J1=II8,21-I4,1
         DB20(I4,J1) = DB10(I4,J1-1) + DB30(I4+1,J1)
        END DO
       END DO
C$OMP PARALLEL SHARED (DC20,DC10,DC30) PRIVATE (II11,II10,K1,I4,J1,II13,
C$OMP& II12)
C$OMP DO 
       DO K1=1,10
        DO I4=2,15
         II11 = (19 - I4) / 4
         II10 = II11 * 4 + 3
         DO J1=3,18-I4,4
          DC20(I4,J1,K1) = DC10(I4,J1,K1+10) + DC30(I4,J1,K1)
          DC20(I4,J1+1,K1) = DC10(I4,J1+1,K1+10) + DC30(I4,J1+1,K1)
          DC20(I4,J1+2,K1) = DC10(I4,J1+2,K1+10) + DC30(I4,J1+2,K1)
          DC20(I4,J1+3,K1) = DC10(I4,J1+3,K1+10) + DC30(I4,J1+3,K1)
         END DO
         DO J1=II10,21-I4,1
          DC20(I4,J1,K1) = DC10(I4,J1,K1+10) + DC30(I4,J1,K1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K1=1,10
        DO I4=2,15
         II13 = (19 - I4) / 4
         II12 = II13 * 4 + 3
         DO J1=3,18-I4,4
          DC10(I4,J1,K1) = DC20(I4,J1-1,K1+1) + DC30(I4,J1,K1+1)
          DC10(I4,J1+1,K1) = DC20(I4,J1,K1+1) + DC30(I4,J1+1,K1+1)
          DC10(I4,J1+2,K1) = DC20(I4,J1+1,K1+1) + DC30(I4,J1+2,K1+1)
          DC10(I4,J1+3,K1) = DC20(I4,J1+2,K1+1) + DC30(I4,J1+3,K1+1)
         END DO
         DO J1=II12,21-I4,1
          DC10(I4,J1,K1) = DC20(I4,J1-1,K1+1) + DC30(I4,J1,K1+1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                            
       DO I4=2,15
        II15 = (19 - I4) / 4
        II14 = II15 * 4 + 3
        DO J1=3,18-I4,4
         DB30(I4,J1) = DB10(I4-1,J1-1) - DB20(I4-1,J1-1)
         DB30(I4,J1+1) = DB10(I4-1,J1) - DB20(I4-1,J1)
         DB30(I4,J1+2) = DB10(I4-1,J1+1) - DB20(I4-1,J1+1)
         DB30(I4,J1+3) = DB10(I4-1,J1+2) - DB20(I4-1,J1+2)
        END DO
        DO J1=II14,21-I4,1
         DB30(I4,J1) = DB10(I4-1,J1-1) - DB20(I4-1,J1-1)
        END DO
       END DO
       WRITE (6, *) ' (DA10) ', (DA10(K), K=1,15)
       WRITE (6, *) ' (DA30) ', (DA30(K), K=1,15)
       DO J1=1,10
        WRITE (6, *) ' (DB10) ', (DB10(I,J1), I=1,15)
        WRITE (6, *) ' (DB20) ', (DB20(I,J1), I=1,15)
       END DO
       DO J1=3,12
        DO K1=1,10
         WRITE (6, *) ' (DC10) ', (DC10(I,J1,K1), I=1,15)
         WRITE (6, *) ' (DC20) ', (DC20(I,J1,K1), I=1,15)
        END DO
       END DO
       DX1 = 0D0
       II1 = IL10(10)
       II3 = II1 - 1
       II17 = (II1 - 1) / 4
       II16 = II17 * 4 + 2
       DO I4=2,II1-3,4
        DD3 = DA10(I4) * 2D0
        DD4 = DA10(I4+1) * 2D0
        DD5 = DA10(I4+2) * 2D0
        DD2 = DA10(I4+3) * 2D0
        DA20(I4) = DD3 - DA30(I4+1)
        DA20(I4+1) = DD4 - DA30(I4+2)
        DA20(I4+2) = DD5 - DA30(I4+3)
        DA20(I4+3) = DD2 - DA30(I4+4)
       END DO
       DO I4=II16,II1,1
        DD2 = DA10(I4) * 2D0
        DA20(I4) = DD2 - DA30(I4+1)
       END DO
       IF (II3 .GT. 0) DX1 = DMAX1 (DA10(II3+1), DA20(II3+1), DA30(II3+1
     X   ))
       DO I4=2,II1
        DO J1=2,IL10(I4)
         DX2 = DB10(I4,J1) + DB30(I4+1,J1)
         DY2 = DB20(I4,J1) + DB30(I4,J1+1)
         IF (DX2 .LT. DY2) THEN
          LD20(I4,J1) = .TRUE.
         END IF
         DB30(I4,J1) = DX2 - DY2 + DB30(I4,J1)
        END DO
        IF (DA10(I4) .GT. DA20(I4)) THEN
         LD10(IL10(I4)) = .TRUE.
        END IF
        DO J1=2,IL10(I4)
         IF (LD20(I4,J1)) THEN
          DB10(1,J1) = DB30(I4,J1-1) * 2D0
         ELSE
          DB10(2,J1) = DB30(I4-1,J1) * 2D0
         END IF
        END DO
       END DO
C$OMP PARALLEL SHARED (II1,IL10,DC30,DC10,DC20) PRIVATE (II4,II5,I4,J1,
C$OMP& K1)
C$OMP DO 
       DO I4=2,II1
        II5 = IL10(I4)
        DO J1=2,II5
         II4 = J1 + II5
         DO K1=11,16,5
          DC30(K1,J1,I4) = DC10(I4+1,II4,K1-1) - DC20(I4,J1+1,K1-1)
          DC30(K1+1,J1,I4) = DC10(I4+1,II4,K1) - DC20(I4,J1+1,K1)
          DC30(K1+2,J1,I4) = DC10(I4+1,II4,K1+1) - DC20(I4,J1+1,K1+1)
          DC30(K1+3,J1,I4) = DC10(I4+1,II4,K1+2) - DC20(I4,J1+1,K1+2)
          DC30(K1+4,J1,I4) = DC10(I4+1,II4,K1+3) - DC20(I4,J1+1,K1+3)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I4=2,II1
        DO J1=2,IL10(I4)
         DO K1=11,16,5
          DC10(I4,J1,K1) = DC30(K1-1,J1-1,I4) + DC20(I4,J1,K1)
          DC10(I4,J1,K1+1) = DC30(K1,J1-1,I4) + DC20(I4,J1,K1+1)
          DC10(I4,J1,K1+2) = DC30(K1+1,J1-1,I4) + DC20(I4,J1,K1+2)
          DC10(I4,J1,K1+3) = DC30(K1+2,J1-1,I4) + DC20(I4,J1,K1+3)
          DC10(I4,J1,K1+4) = DC30(K1+3,J1-1,I4) + DC20(I4,J1,K1+4)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = MAX0 (II1 - 1, 0) + 2
       WRITE (6, *) ' (DA20) ', (DA20(K), K=1,10)
       WRITE (6, *) ' (DB10) ', ((DB10(I,J), I=1,2), J=1,10)
       DO J1=1,10
        WRITE (6, *) ' (DB30) ', (DB30(I,J1), I=1,10)
        DO K1=1,10
         WRITE (6, *) ' (DC30) ', (DC30(I,J1,K1), I=11,20)
        END DO
        DO K1=11,20
         WRITE (6, *) ' (DC10) ', (DC10(I,J1,K1), I=1,10)
        END DO
       END DO
       WRITE (6, *) ' DX1 = ', DX1

       DCNT1 = 0D0
       DCNT2 = 0D0
       DO I1=1,3
        DCNT1 = DCNT1 + DA10(I1+3) + DA10(I1)
        II2 = MAX0 (I1 - 1, 0)
        IF (LD10(I1) .OR. .NOT.LD20(I1,II2+2)) THEN
         LD30(I1,I1,I1) = .TRUE.
        END IF
       END DO
       DO I21=2,3
        DO I1=I21,3
         DCNT2 = MAX (DCNT2, DB10(I1,I21))
         DB20(I1,I21) = DB10(I1+1,I21) - DB30(I1,I21)
        END DO
       END DO
       DO I1=1,3
        DO I21=2,I1
         II19 = (21 - I21) / 4
         II18 = II19 * (-4) + 20
         DO I3=20,I21+3,-4
          DC20(I3,I21,I1) = DMAX1 (DC10(I1,I21,I3), DC30(I3,I21,I1))
          DC20(I3-1,I21,I1) = DMAX1 (DC10(I1,I21,I3-1), DC30(I3-1,I21,I1
     X      ))
          DC20(I3-2,I21,I1) = DMAX1 (DC10(I1,I21,I3-2), DC30(I3-2,I21,I1
     X      ))
          DC20(I3-3,I21,I1) = DMAX1 (DC10(I1,I21,I3-3), DC30(I3-3,I21,I1
     X      ))
         END DO
         DO I3=II18,I21,-1
          DC20(I3,I21,I1) = DMAX1 (DC10(I1,I21,I3), DC30(I3,I21,I1))
         END DO
        END DO
       END DO
       DD1 = DA30(I)
       DO I1=1,3
        DO I21=2,I1
         DB10(I1,I21) = DA20(I21) + DA30(I21) - DB20(I1,I21)
        END DO
        DA20(I1) = DD1 - DB10(3,I1)
       END DO
       WRITE (6, *) ' DCNT1 = ', DCNT1
       WRITE (6, *) ' DCNT2 = ', DCNT2
       WRITE (6, *) ' (DA20) ', (DA20(K), K=1,10)
       DO J1=1,10
        WRITE (6, *) ' (DB10) ', (DB10(I,J1), I=1,10)
        WRITE (6, *) ' (DB20) ', (DB20(I,J1), I=1,10)
        DO K1=1,10
         WRITE (6, *) ' (DC20) ', (DC20(I,J1,K1), I=20,2,-1)
        END DO
       END DO
       WRITE (6, *) ' (LD30) ', (LD30(K,K,K), K=1,10)
       STOP 
      END
