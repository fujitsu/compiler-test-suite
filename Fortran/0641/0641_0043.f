      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA30(20,20), DA20(20,20), DA10(20,20)
       COMMON /BLK1/ DA10, DA20, DA30
       DIMENSION DB10(20,20)
       COMMON /BLK2/ DB10, DX, DY, DZ
       DIMENSION CD30(20,20), CD20(20,20), CD10(20,20)
       COMMON /BLK3/ CD10, CD20, CD30
       DIMENSION LD30(20,20), LD20(20,20), LD10(20)
       COMMON /BLK4/ LD10, LD20, LD30
       COMMON /IND/ NI, NJ, IP, JP
       COMMON /DOP/ NMAX, NMIN, IHALF, JHALF
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2, DD1
       COMPLEX*16 DC3, DC2, DC1

       NI = 1
       II1 = MAX0 (NMAX - 1, 0)
       II3 = NMAX - 1
       II5 = (NMAX - 1) / 4
       II4 = II5 * 4 + 2
       II7 = (NMAX - JHALF + 1) / 4
       II6 = JHALF + II7 * 4
       II9 = (NMAX - JHALF + 1) / 4
       II8 = JHALF + II9 * 4
       II11 = (NMAX - JHALF + 1) / 4
       II10 = JHALF + II11 * 4
       DO I=2,NMAX-3,4
        DD1 = DB10(I,I) - DA30(JP,I)
        DD2 = DB10(I+1,I+1) - DA30(JP,I+1)
        DD3 = DB10(I+2,I+2) - DA30(JP,I+2)
        DD4 = DB10(I+3,I+3) - DA30(JP,I+3)
        DA10(I,I) = DD1
        DD5 = DA20(I,I) * DA10(I,I)
        DA10(I+1,I+1) = DD2
        DD6 = DA20(I+1,I+1) * DA10(I+1,I+1)
        DA10(I+2,I+2) = DD3
        DD7 = DA20(I+2,I+2) * DA10(I+2,I+2)
        DA10(I+3,I+3) = DD4
        DD8 = DA20(I+3,I+3) * DA10(I+3,I+3)
        DA20(I,I) = DD5
        DD9 = DMAX1 (DA20(I,NJ), DA30(I,I))
        DA20(I+1,I+1) = DD6
        DD10 = DMAX1 (DA20(I+1,NJ), DA30(I+1,I+1))
        DA20(I+2,I+2) = DD7
        DD11 = DMAX1 (DA20(I+2,NJ), DA30(I+2,I+2))
        DA20(I+3,I+3) = DD8
        DA30(NJ,I+3) = DMAX1 (DA20(I+3,NJ), DA30(I+3,I+3))
        DA30(NJ,I+2) = DD11
        DA30(NJ,I+1) = DD10
        DA30(NJ,I) = DD9
       END DO
       DO I=II4,NMAX,1
        DA10(I-II4+II5*4+2,I) = DB10(I,I-II4+II5*4+2) - DA30(JP,I)
        DA20(I,I-II4+II5*4+2) = DA20(I,I) * DA10(I,I-II4+II5*4+2)
        DA30(NJ,I-II4+II5*4+2) = DMAX1 (DA20(I,NJ), DA30(I,I))
       END DO
       IF (II3 .GT. 0) IP = 20 - II3
C$OMP PARALLEL SHARED (NMAX,JHALF,LD20,LD30,II6,DX,DY,CD10,II8,DZ,CD20,
C$OMP& CD30,II10) PRIVATE (DC1,DC2,DC3,II2,I,J)
C$OMP DO 
       DO II2=0,2
        GO TO (11, 12), II2
        DO I=2,NMAX
         DO J=JHALF,NMAX-3,4
          LD20(21-I,J) = .NOT.LD30(I,J)
          LD30(21-I,J) = .NOT.LD20(J,21-I)
          LD20(21-I,J+1) = .NOT.LD30(I,J+1)
          LD30(21-I,J+1) = .NOT.LD20(J+1,21-I)
          LD20(21-I,J+2) = .NOT.LD30(I,J+2)
          LD30(21-I,J+2) = .NOT.LD20(J+2,21-I)
          LD20(21-I,J+3) = .NOT.LD30(I,J+3)
          LD30(21-I,J+3) = .NOT.LD20(J+3,21-I)
         END DO
         DO J=II6,NMAX,1
          LD20(21-I,J) = .NOT.LD30(I,J)
          LD30(21-I,J) = .NOT.LD20(J,21-I)
         END DO
        END DO
C$OMP FLUSH
        GO TO 13
   11   DC1 = DCMPLX (DX, DY)
        DO I=2,NMAX
         DO J=JHALF,NMAX-3,4
          CD10(I,J) = CD10(J,I) + DC1
          CD10(I,J+1) = CD10(J+1,I) + DC1
          CD10(I,J+2) = CD10(J+2,I) + DC1
          CD10(I,J+3) = CD10(J+3,I) + DC1
         END DO
         DO J=II8,NMAX,1
          CD10(I,J) = CD10(J,I) + DC1
         END DO
        END DO
C$OMP FLUSH
        GO TO 13
   12   DC2 = DCMPLX (DX, DZ)
        DC3 = DCMPLX (DZ, DY)
        DO I=2,NMAX
         DO J=JHALF,NMAX-3,4
          CD20(J,I) = CD30(I,J) + DC2
          CD30(21-I,J) = CD20(I-1,J) + DC3
          CD20(J+1,I) = CD30(I,J+1) + DC2
          CD30(21-I,J+1) = CD20(I-1,J+1) + DC3
          CD20(J+2,I) = CD30(I,J+2) + DC2
          CD30(21-I,J+2) = CD20(I-1,J+2) + DC3
          CD20(J+3,I) = CD30(I,J+3) + DC2
          CD30(21-I,J+3) = CD20(I-1,J+3) + DC3
         END DO
         DO J=II10,NMAX,1
          CD20(J,I) = CD30(I,J) + DC2
          CD30(21-I,J) = CD20(I-1,J) + DC3
         END DO
        END DO
C$OMP FLUSH
   13   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       NI = II1 + 1
       WRITE (6, *) '### (DA10) ###'
       WRITE (6, 99) DA10
       WRITE (6, *) '### (CD20) ###'
       WRITE (6, 99) CD20
       WRITE (6, *) '### (LD30) ###'
       WRITE (6, *) LD30
       CALL MATRX
   99  FORMAT(5D14.7)
       STOP 
      END

      BLOCK DATA INIT
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA30(20,20), DA20(20,20), DA10(20,20)
       COMMON /BLK1/ DA10, DA20, DA30
       DIMENSION DB10(20,20)
       COMMON /BLK2/ DB10, DX, DY, DZ
       DIMENSION CD30(20,20), CD20(20,20), CD10(20,20)
       COMMON /BLK3/ CD10, CD20, CD30
       DIMENSION LD30(20,20), LD20(20,20), LD10(20)
       COMMON /BLK4/ LD10, LD20, LD30
       COMMON /IND/ NI, NJ, IP, JP
       COMMON /DOP/ NMAX, NMIN, IHALF, JHALF
       DATA DA10, DA20, DA30/400*1.D0,200*2.D0,200*4.D0,400*3.D0/ 
       DATA DB10/400*5.D0/ DX, DY, DZ/0.5D0,0.2D0,0.4D0/ 
       DATA CD10, CD20/400*(2.D0,4.D0),400*(6.D0,3.D0)/ 
       DATA CD30/200*(1.D0,5.D0),200*(2.D0,3.D0)/ 
       DATA LD10, LD20, LD30/820*.FALSE./ 
       DATA NI, NJ, IP, JP/4*1/ 
       DATA NMAX, NMIN, IHALF, JHALF/20,1,10,10/ 
      END

      SUBROUTINE MATRX
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA30(20,20), DA20(20,20), DA10(20,20)
       COMMON /BLK1/ DA10, DA20, DA30
       DIMENSION DB10(20,20)
       COMMON /BLK2/ DB10, DX, DY, DZ
       DIMENSION CD30(20,20), CD20(20,20), CD10(20,20)
       COMMON /BLK3/ CD10, CD20, CD30
       DIMENSION LD30(20,20), LD20(20,20), LD10(20)
       COMMON /BLK4/ LD10, LD20, LD30
       COMMON /IND/ NI, NJ, IP, JP
       COMMON /DOP/ NMAX, NMIN, IHALF, JHALF
       DIMENSION DD10(400,20), DD20(-100:100,20), DD30(-400:0,20)
       DATA DD10/8000*1.D0/ 
       DATA DD20/4020*1.D0/ 
       DATA DD30/8020*1.D0/ 
       INTEGER II5, II4, II3, II2, II1, J1, I1
       LOGICAL LL1
       II4 = NMAX * NMAX
       DO I1=NMIN,IHALF
        DO J1=1,II4
         NJ = I1 + JHALF
         IF (JP .LE. 20) THEN
          DD10(J1,I1) = DA10(I1,JP)
          DD10(J1,I1+JHALF) = DA20(I1,JP)
          DD30(-J1,I1) = DA30(I1,JP)
          DD30(-J1,I1+JHALF) = DB10(I1,JP)
         ELSE
          DD10(J1,I1) = DX * DY - DZ
          DD30(-J1,I1) = DB10(I1,I1) - DX
          IF (J1 .LT. 201) THEN
           NJ = J1 - 100
           DD20(J1-100,I1) = DIMAG (CD10(I1,I1)) - DY
          END IF
          JP = 0
         END IF
         JP = JP + 1
        END DO
       END DO

       NI = 1
       II1 = MAX0 (NMAX - NMIN + 1, 0)
       II2 = NMAX - 1
       II3 = NMAX - 1
       II5 = NMAX - NMIN + 1
       IF (II5 .GT. 0) THEN
        DO K=2,NMAX
         LL1 = LD10(K)
         DO IL=NMIN,NMAX
          DD10(K-NMIN+IL+2,K) = DB10(1,IL) * DZ - DA20(K,IL)
          IF (LL1 .OR. LD20(K,IL)) THEN
           DD20(K+NMIN*2+IL*(-2)-1,IL) = DD20(K,IL) + DB10(K-1,IL)
           LD30(K,IL) = .NOT.LD20(IL,K) .AND. .NOT.LD30(IL,K)
           GO TO 35
          END IF
          DD30(K+NMIN*2+IL*(-2)-NMAX-1,IL) = DD30(-IL,K) * DX - DIMAG (
     X      CD10(K,IL))
          DZ = DD10(K-NMIN+IL+1,K) - DREAL (CD30(K-1,IL)) - DX
          DY = (DIMAG (CD20(K,IL)) - DX) * DA30(K,IL)
          CD10(IL,K-1) = DCMPLX (DZ, DY)
          IF (DZ .LT. DY) THEN
           DA10(K-1,IL) = DY - DD20(K-NMIN+IL+1,IL) + DX
          ELSE
           DA20(IL,K-1) = DD30(NMIN-K-IL-1,IL) + DZ
           CD20(IL,K) = DCMPLX (DY, DZ)
          END IF
   35     CONTINUE
         END DO
        END DO
       END IF
       IF (II3 .GT. 0) NJ = II3 + II1 + 2
       IF (II2 .GT. 0) JP = II2 + II1 * (-2)
       WRITE (6, *) '### (DD10) ###'
       WRITE (6, 99) ((DD10(I,J), I=1,100), J=1,20)
       WRITE (6, *) '### (DD20) ###'
       WRITE (6, 99) ((DD20(I,J), I=-50,50), J=1,20)
       WRITE (6, *) '### (CD10) ###'
       WRITE (6, 99) CD10
       WRITE (6, *) '### (DA10) ###'
       WRITE (6, 99) DA10
       WRITE (6, *) '### (DA20) ###'
       WRITE (6, 99) DA20
       WRITE (6, *) '### (CD20) ###'
       WRITE (6, 99) CD20
       WRITE (6, *) '### (DD30) ###'
       WRITE (6, 99) ((DD30(I,J), I=-100,-1), J=1,20)
   99  FORMAT(5(1X,D14.7))
       RETURN 
      END
