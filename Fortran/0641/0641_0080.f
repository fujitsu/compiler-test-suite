      IMPLICIT REAL*8 (D), COMPLEX*16 (C)
      DIMENSION DA3(20), DA2(20), DA1(20)
      COMMON /VSU1/ DA1, DA2, DA3
      DIMENSION DB3(20,20), DB2(20,20), DB1(20,20)
      COMMON /VSU2/ DB1, DB2, DB3
      DIMENSION CD3(20,20), CD2(20,20), CD1(20,20)
      COMMON /VSU3/ CD1, CD2, CD3
      DIMENSION DW1(20), DW2(20,20), CW1(20,20)
      DOUBLE PRECISION DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, 
     X  DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
      COMPLEX*16 DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

      NN = 18
      CALL INIT
      CALL SUB1 (NN)

      DO I=1,17,4
       DD5 = DA1(I) + DA2(I)
       DD6 = DA1(I+1) + DA2(I+1)
       DD7 = DA1(I+2) + DA2(I+2)
       DD1 = DA1(I+3) + DA2(I+3)
       DW1(I) = DD5 + DA3(I)
       DW1(I+1) = DD6 + DA3(I+1)
       DW1(I+2) = DD7 + DA3(I+2)
       DW1(I+3) = DD1 + DA3(I+3)
      END DO
C$OMP PARALLEL SHARED (DB1,DB2,DW2,DB3,CD1,CD2,CW1,CD3) PRIVATE (DD2,DC1
C$OMP& ,DD8,DD9,DD10,DC3,DC4,DC5,J,I)
C$OMP DO 
      DO J=1,20

       DO I=1,17,4
        DD8 = DB1(I,J) + DB2(I,J)
        DD9 = DB1(I+1,J) + DB2(I+1,J)
        DD10 = DB1(I+2,J) + DB2(I+2,J)
        DD2 = DB1(I+3,J) + DB2(I+3,J)
        DW2(I,J) = DD8 + DB3(I,J)
        DW2(I+1,J) = DD9 + DB3(I+1,J)
        DW2(I+2,J) = DD10 + DB3(I+2,J)
        DW2(I+3,J) = DD2 + DB3(I+3,J)
        DC3 = CD1(I,J) + CD2(I,J)
        DC4 = CD1(I+1,J) + CD2(I+1,J)
        DC5 = CD1(I+2,J) + CD2(I+2,J)
        DC1 = CD1(I+3,J) + CD2(I+3,J)
        CW1(I,J) = DC3 + CD3(I,J)
        CW1(I+1,J) = DC4 + CD3(I+1,J)
        CW1(I+2,J) = DC5 + CD3(I+2,J)
        CW1(I+3,J) = DC1 + CD3(I+3,J)
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      WRITE (6, *) DW1
      WRITE (6, *) DW2
      WRITE (6, *) CW1

      CALL INIT
      CALL SUB2 (NN)

      DO I=1,17,4
       DD11 = DA1(I) + DA2(I)
       DD12 = DA1(I+1) + DA2(I+1)
       DD13 = DA1(I+2) + DA2(I+2)
       DD3 = DA1(I+3) + DA2(I+3)
       DW1(I) = DD11 + DA3(I)
       DW1(I+1) = DD12 + DA3(I+1)
       DW1(I+2) = DD13 + DA3(I+2)
       DW1(I+3) = DD3 + DA3(I+3)
      END DO
C$OMP PARALLEL SHARED (DB1,DB2,DW2,DB3,CD1,CD2,CW1,CD3) PRIVATE (DD4,DC2
C$OMP& ,DD14,DD15,DD16,DC6,DC7,DC8,J,I)
C$OMP DO 
      DO J=1,20

       DO I=1,17,4
        DD14 = DB1(I,J) + DB2(I,J)
        DD15 = DB1(I+1,J) + DB2(I+1,J)
        DD16 = DB1(I+2,J) + DB2(I+2,J)
        DD4 = DB1(I+3,J) + DB2(I+3,J)
        DW2(I,J) = DD14 + DB3(I,J)
        DW2(I+1,J) = DD15 + DB3(I+1,J)
        DW2(I+2,J) = DD16 + DB3(I+2,J)
        DW2(I+3,J) = DD4 + DB3(I+3,J)
        DC6 = CD1(I,J) + CD2(I,J)
        DC7 = CD1(I+1,J) + CD2(I+1,J)
        DC8 = CD1(I+2,J) + CD2(I+2,J)
        DC2 = CD1(I+3,J) + CD2(I+3,J)
        CW1(I,J) = DC6 + CD3(I,J)
        CW1(I+1,J) = DC7 + CD3(I+1,J)
        CW1(I+2,J) = DC8 + CD3(I+2,J)
        CW1(I+3,J) = DC2 + CD3(I+3,J)
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      WRITE (6, *) DW1
      WRITE (6, *) DW2
      WRITE (6, *) CW1
      STOP 
      END

      SUBROUTINE INIT
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA3(20), DA2(20), DA1(20)
       COMMON /VSU1/ DA1, DA2, DA3
       DIMENSION DB3(20,20), DB2(20,20), DB1(20,20)
       COMMON /VSU2/ DB1, DB2, DB3
       DIMENSION CD3(20,20), CD2(20,20), CD1(20,20)
       COMMON /VSU3/ CD1, CD2, CD3
       INTEGER II4, II3, II2, II1
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       DO J=1,17,4
        DA1(J) = 1D0
        DA1(J+1) = 1D0
        DA1(J+2) = 1D0
        DA1(J+3) = 1D0
        DA2(J) = 2D0
        DA2(J+1) = 2D0
        DA2(J+2) = 2D0
        DA2(J+3) = 2D0
        DA3(J) = 3D0
        DA3(J+1) = 3D0
        DA3(J+2) = 3D0
        DA3(J+3) = 3D0
       END DO
C$OMP PARALLEL SHARED (DB1,DB2,DB3,CD1,CD2,CD3) PRIVATE (DD1,DD2,II1,II2
C$OMP& ,II3,II4,DD3,DD4,DD5,J,I)
C$OMP DO 
       DO J=1,20
        DD1 = DFLOAT (J)
        DO I=1,17,4
         DB1(I,J) = DFLOAT (I)
         DB1(I+1,J) = DFLOAT (I + 1)
         DB1(I+2,J) = DFLOAT (I + 2)
         DB1(I+3,J) = DFLOAT (I + 3)
         DB2(I,J) = DD1
         DB2(I+1,J) = DD1
         DB2(I+2,J) = DD1
         DB2(I+3,J) = DD1
         II2 = I - J
         II3 = I - J + 1
         II4 = I - J + 2
         II1 = I - J + 3
         DD3 = DFLOAT (II2)
         DD4 = DFLOAT (II3)
         DD5 = DFLOAT (II4)
         DD2 = DFLOAT (II1)
         DB3(I,J) = 1D0 - DD3
         DB3(I+1,J) = 1D0 - DD4
         DB3(I+2,J) = 1D0 - DD5
         DB3(I+3,J) = 1D0 - DD2
         CD1(I,J) = (1.D0,4.D0)
         CD1(I+1,J) = (1.D0,4.D0)
         CD1(I+2,J) = (1.D0,4.D0)
         CD1(I+3,J) = (1.D0,4.D0)
         CD2(I,J) = (2.D0,3.D0)
         CD2(I+1,J) = (2.D0,3.D0)
         CD2(I+2,J) = (2.D0,3.D0)
         CD2(I+3,J) = (2.D0,3.D0)
         CD3(I,J) = (3.D0,2.D0)
         CD3(I+1,J) = (3.D0,2.D0)
         CD3(I+2,J) = (3.D0,2.D0)
         CD3(I+3,J) = (3.D0,2.D0)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END

      SUBROUTINE SUB1 ( NN )
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA3(20), DA2(20), DA1(20)
       COMMON /VSU1/ DA1, DA2, DA3
       DIMENSION DB3(20,20), DB2(20,20), DB1(20,20)
       COMMON /VSU2/ DB1, DB2, DB3
       DIMENSION CD3(20,20), CD2(20,20), CD1(20,20)
       COMMON /VSU3/ CD1, CD2, CD3
       INTEGER II12, II11, II10, II9, II8, II7, II6, II5, II4, II3, II2
     X   , II1
       DOUBLE PRECISION DD2, DD1
       LOGICAL LL1
       COMPLEX*16 DC9, DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

       DO J=2,NN
        N2 = J + 1
        DA1(J) = DA1(J+1) + DB1(J,J+1)
        IF (DA2(J) .GT. 3D0) THEN
         N2 = 1
        END IF
        DA2(J-1) = DA2(J) + DA3(N2)
C$OMP PARALLEL SHARED (NN,J,DB1,DB2,N2,DB3,CD3,CD2,CD1) PRIVATE (II4,II3
C$OMP& ,II6,II5,II1,I)
C$OMP DO 
        DO II1=0,1
         GO TO (14), II1
         II4 = (NN - 1) / 4
         II3 = II4 * 4 + 2
         DO I=2,NN-3,4
          DB1(I,J) = DB2(I,J-1) + DB3(N2,I)
          DB3(I,N2) = DREAL (CD3(I,J)) - DIMAG (CD2(I,J))
          DB1(I+1,J) = DB2(I+1,J-1) + DB3(N2,I+1)
          DB3(I+1,N2) = DREAL (CD3(I+1,J)) - DIMAG (CD2(I+1,J))
          DB1(I+2,J) = DB2(I+2,J-1) + DB3(N2,I+2)
          DB3(I+2,N2) = DREAL (CD3(I+2,J)) - DIMAG (CD2(I+2,J))
          DB1(I+3,J) = DB2(I+3,J-1) + DB3(N2,I+3)
          DB3(I+3,N2) = DREAL (CD3(I+3,J)) - DIMAG (CD2(I+3,J))
         END DO
         DO I=II3,NN,1
          DB1(I,J) = DB2(I,J-1) + DB3(N2,I)
          DB3(I,N2) = DREAL (CD3(I,J)) - DIMAG (CD2(I,J))
         END DO
C$OMP FLUSH
         GO TO 15
   14    II6 = (NN - 1) / 4
         II5 = II6 * 4 + 2
         DO I=2,NN-3,4
          CD1(I,N2) = CD1(I-1,N2) + CD2(I,J) * CD3(I,J)
          CD1(I+1,N2) = CD1(I,N2) + CD2(I+1,J) * CD3(I+1,J)
          CD1(I+2,N2) = CD1(I+1,N2) + CD2(I+2,J) * CD3(I+2,J)
          CD1(I+3,N2) = CD1(I+2,N2) + CD2(I+3,J) * CD3(I+3,J)
         END DO
         DO I=II5,NN,1
          CD1(I,N2) = CD1(I-1,N2) + CD2(I,J) * CD3(I,J)
         END DO
C$OMP FLUSH
   15    CONTINUE
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       END DO
       II2 = NN - 1
       II8 = (NN - 1) / 4
       II7 = II8 * 4 + 2
       II10 = (NN - 1) / 4
       II9 = II10 * 4 + 2
       II12 = (NN - 1) / 4
       II11 = II12 * 4 + 2
       DO J=2,NN-3,4
        DA2(J) = DA2(J-1) + DB2(J-1,J)
        DA2(J+1) = DA2(J) + DB2(J,J+1)
        DA2(J+2) = DA2(J+1) + DB2(J+1,J+2)
        DA2(J+3) = DA2(J+2) + DB2(J+2,J+3)
       END DO
       DO J=II7,NN,1
        DA2(J) = DA2(J-1) + DB2(J-1,J)
       END DO
       DD2 = DA2(1)
       LL1 = II2 .GT. 0
       DO J=2,NN
        IF (DA3(J) .LE. 0D0) THEN
         DA3(J-1) = DA1(J) - DREAL (CD2(J,J))
        END IF
        DO I=2,NN-3,4
         DB2(I,J-1) = DB3(I,2) + DB2(2,I)
         DB2(I+1,J-1) = DB3(I+1,2) + DB2(2,I+1)
         DB2(I+2,J-1) = DB3(I+2,2) + DB2(2,I+2)
         DB2(I+3,J-1) = DB3(I+3,2) + DB2(2,I+3)
        END DO
        DO I=II9,NN,1
         DB2(I,J-1) = DB3(I,2) + DB2(2,I)
        END DO
        CD2(J,J-1) = DCMPLX (DA1(J), DD2)
        IF (LL1) THEN
         DD1 = DA1(J-1)
         DO I=2,NN-3,4
          DC5 = DCMPLX (DB1(I,1), DD1)
          DC6 = DCMPLX (DB1(I+1,1), DD1)
          DC7 = DCMPLX (DB1(I+2,1), DD1)
          DC8 = DCMPLX (DB1(I+3,1), DD1)
          CD2(I,2) = DC5
          DC2 = CD2(I-1,1) + CD2(I,J)
          CD2(I+1,2) = DC6
          DC3 = CD2(I,1) + CD2(I+1,J)
          CD2(I+2,2) = DC7
          DC4 = CD2(I+1,1) + CD2(I+2,J)
          CD2(I+3,2) = DC8
          DC1 = CD2(I+2,1) + CD2(I+3,J)
          CD3(I,1) = DC2 - CD1(I,J)
          CD3(I+1,1) = DC3 - CD1(I+1,J)
          CD3(I+2,1) = DC4 - CD1(I+2,J)
          CD3(I+3,1) = DC1 - CD1(I+3,J)
         END DO
         DO I=II11,NN,1
          DC9 = DCMPLX (DB1(I,1), DD1)
          CD2(I,2) = DC9
          DC1 = CD2(I-1,1) + CD2(I,J)
          CD3(I,1) = DC1 - CD1(I,J)
         END DO
        END IF
       END DO
       RETURN 
      END

      SUBROUTINE SUB2 ( NN )
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA3(20), DA2(20), DA1(20)
       COMMON /VSU1/ DA1, DA2, DA3
       DIMENSION DB3(20,20), DB2(20,20), DB1(20,20)
       COMMON /VSU2/ DB1, DB2, DB3
       DIMENSION CD3(20,20), CD2(20,20), CD1(20,20)
       COMMON /VSU3/ CD1, CD2, CD3
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2, DD1
       COMPLEX*16 DC9, DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1
       II1 = NN - 2
       II3 = (NN - 2) / 4
       II2 = II3 * 4 + 3
       II5 = (NN - 1) / 4
       II4 = II5 * 4 + 2
       II7 = (NN - 1) / 4
       II6 = II7 * 4 + 2
       II9 = (NN / 2 - 2) / 4
       II8 = II9 * 4 + 3
       DO I=3,NN
        IF (MOD (I, 2) .EQ. 0) THEN
         IF (II1 .GT. 0) THEN
          DD1 = DA1(I+1)
          DD2 = DA1(I-1)
          DO J=3,NN-3,4
           DD1 = DMAX1 (DD1, DA2(J))
           DD3 = DB1(I-1,NN-J+1) - DD2
           DC1 = CD1(2,J) + CD2(J,I)
           DD1 = DMAX1 (DD1, DA2(J+1))
           DD4 = DB1(I-1,NN-J) - DD2
           DC2 = CD1(2,J+1) + CD2(J+1,I)
           DD1 = DMAX1 (DD1, DA2(J+2))
           DD5 = DB1(I-1,NN-J-1) - DD2
           DC3 = CD1(2,J+2) + CD2(J+2,I)
           DD1 = DMAX1 (DD1, DA2(J+3))
           DB1(I+1,J+3) = DB1(I-1,NN-J-2) - DD2
           CD1(J+3,1) = CD1(2,J+3) + CD2(J+3,I)
           CD1(J+2,1) = DC3
           DB1(I+1,J+2) = DD5
           CD1(J+1,1) = DC2
           DB1(I+1,J+1) = DD4
           CD1(J,1) = DC1
           DB1(I+1,J) = DD3
          END DO
          DO J=II2,NN,1
           DD1 = DMAX1 (DD1, DA2(J))
           DB1(I+1,J) = DB1(I-1,NN-J+1) - DD2
           CD1(J,1) = CD1(2,J) + CD2(J,I)
          END DO
          DA1(I+1) = DD1
         END IF

         DO J=2,NN-3,4
          DC4 = CD2(J-1,I) + CD3(J,I)
          DC5 = CD2(J,I) + CD3(J+1,I)
          DC6 = CD2(J+1,I) + CD3(J+2,I)
          CD2(J+3,I+2) = CD2(J+2,I) + CD3(J+3,I)
          DD6 = DB2(J,1) - DA3(J)
          DD7 = DB2(J+1,1) - DA3(J+1)
          DD8 = DB2(J+2,1) - DA3(J+2)
          DB2(J+4,I+1) = DB2(J+3,1) - DA3(J+3)
          DB2(J+3,I+1) = DD8
          DB2(J+2,I+1) = DD7
          DB2(J+1,I+1) = DD6
          CD2(J+2,I+2) = DC6
          CD2(J+1,I+2) = DC5
          CD2(J,I+2) = DC4
         END DO
         DO J=II4,NN,1
          CD2(J,I+2) = CD2(J-1,I) + CD3(J,I)
          DB2(J+1,I+1) = DB2(J,1) - DA3(J)
         END DO
        END IF
        IF (I .GE. 10) THEN
         DO J=2,NN-3,4
          DD9 = DB3(I-1,I+1)
          DD10 = DB3(I-1,I+1)
          DD11 = DB3(I-1,I+1)
          DB3(J+3,I-1) = DB3(I-1,I+1)
          DC7 = CD3(J,I+2) + CD1(I,J)
          DC8 = CD3(J+1,I+2) + CD1(I,J+1)
          DC9 = CD3(J+2,I+2) + CD1(I,J+2)
          CD3(J+4,I-1) = CD3(J+3,I+2) + CD1(I,J+3)
          CD3(J+3,I-1) = DC9
          CD3(J+2,I-1) = DC8
          CD3(J+1,I-1) = DC7
          DB3(J+2,I-1) = DD11
          DB3(J+1,I-1) = DD10
          DB3(J,I-1) = DD9
         END DO
         DO J=II6,NN,1
          DB3(J,I-1) = DB3(I-1,I+1)
          CD3(J+1,I-1) = CD3(J,I+2) + CD1(I,J)
         END DO
        ELSE
         DO J=3,NN/2-3,4
          DA2(J+I-1) = DA2(J+I) + DA3(J)
          DA2(J+I) = DA2(J+I+1) + DA3(J+1)
          DA2(J+I+1) = DA2(J+I+2) + DA3(J+2)
          DA2(J+I+2) = DA2(J+I+3) + DA3(J+3)
         END DO
         DO J=II8,NN/2,1
          DA2(J+I-1) = DA2(J+I) + DA3(J)
         END DO
        END IF
        DMAX = 0D0
        DO J=2,NN
         IF (DREAL (CD1(I-1,J)) .GT. DMAX) THEN
          DMAX = DREAL (CD1(I-1,J))
          CD2(I+1,J) = CD1(I+1,J-1) - CD2(J+1,I-2)
         END IF
        END DO
        WRITE (6, *) DMAX
        DO J=2,NN
         IF (DIMAG (CD2(I-1,J)) .GT. 9999D0) THEN
          CD3(I+2,J-1) = CD1(I+1,J-1) - CD3(J+1,I-2)
         END IF
        END DO
        WRITE (6, *) 9999D0
       END DO
       RETURN 
      END
