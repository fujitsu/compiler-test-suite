      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA40(20), DA30(20), DA20(20), DA10(20)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION DB20(20,20), DB10(20,20)
       COMMON /BLK4/ DB10, DB20
       DIMENSION CD50(20,20), CD40(20,20), CD30(20), CD20(20), CD10(20)
       COMMON /BLK2/ CD10, CD20, CD30, CD40, CD50, CDX
       DIMENSION LD20(20,20), LD10(20)
       COMMON /BLK3/ LD10, LD20
       COMMON /INVK/ IND
       DIMENSION DARG1(20), DARG2(400)
       DIMENSION RARG1(20), RARG2(400)
       DIMENSION CDARG(60)

       EQUIVALENCE (DA40(1), DARG1(1)), (DB10(1,1), DARG2(1))
       EQUIVALENCE (CDX, CDARG(60))
       EQUIVALENCE (RARG1(1), RARG2(1))
       EQUIVALENCE (DX, DA20(1)), (DY, DA10(1))
       INTEGER N2, N1
       PARAMETER (N2 = 20, N1 = 10)
       DATA RARG2/400*1.0/ 
       INTEGER II6, II5, II4, II3, II2, II1
       COMPLEX*16 DC5, DC4, DC3, DC2, DC1

       DO I=2,17,4
        DA10(1) = DA20(I) * DA30(I)
        DA20(I-1) = DMAX1 (DA10(1), DX)
        DY = DY + DMIN1 (DA30(I), DA40(I))
        DA10(1) = DA20(I+1) * DA30(I+1)
        DA20(I) = DMAX1 (DA10(1), DX)
        DY = DY + DMIN1 (DA30(I+1), DA40(I+1))
        DA10(1) = DA20(I+2) * DA30(I+2)
        DA20(I+1) = DMAX1 (DA10(1), DX)
        DY = DY + DMIN1 (DA30(I+2), DA40(I+2))
        DA10(1) = DA20(I+3) * DA30(I+3)
        DA20(I+2) = DMAX1 (DA10(1), DX)
        DY = DY + DMIN1 (DA30(I+3), DA40(I+3))
       END DO
       DO I=18,20,1
        DA10(1) = DA20(I) * DA30(I)
        DA20(I-1) = DMAX1 (DA10(1), DX)
        DY = DY + DMIN1 (DA30(I), DA40(I))
       END DO
       DO I=2,20
        II2 = I / 4
        II1 = II2 * 4 + 1
        DO J=1,I-3,4
         DB10(1,J) = DB20(I,J) + DA40(J)
         DB10(1,J+1) = DB20(I,J+1) + DA40(J+1)
         DB10(1,J+2) = DB20(I,J+2) + DA40(J+2)
         DB10(1,J+3) = DB20(I,J+3) + DA40(J+3)
        END DO
        DO J=II1,I,1
         DB10(1,J) = DB20(I,J) + DA40(J)
        END DO
       END DO
       DO I=2,20
        II4 = I / 4
        II3 = II4 * 4 + 1
        DO J=1,I-3,4
         DB20(I,J) = DIMAG (CD40(I,J))
         DB20(I,J+1) = DIMAG (CD40(I,J+1))
         DB20(I,J+2) = DIMAG (CD40(I,J+2))
         DB20(I,J+3) = DIMAG (CD40(I,J+3))
        END DO
        DO J=II3,I,1
         DB20(I,J) = DIMAG (CD40(I,J))
        END DO
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DB10) ', DB10
       WRITE (6, *) ' (DB20) ', DB20
       WRITE (6, *) ' DY = ', DY

       IND = 11

       DO I=1,10
        DA40(I) = DA10(I+1) / DA40(I+1) + DA30(I)
        IF (DA40(I) .GT. DA20(I+1)) THEN
         LD10(I) = .NOT.LD10(I)
         DX = DNINT (DA40(I))
         DY = DA20(I+1)
        ELSE
         DX = DA20(I+1)
         DY = DNINT (DA40(I))
        END IF
        II6 = (21 - I) / 4
        II5 = I + II6 * 4
        DO J=I,17,4
         CDX = DCMPLX (DB10(I,J), DB20(I+1,J))
         DC1 = CD20(I+1) * CDX - CD10(J)
         CD10(J) = DC1
         CDX = DCMPLX (DB10(I,J+1), DB20(I+1,J+1))
         DC2 = CD20(I+1) * CDX - CD10(J+1)
         CD10(J+1) = DC2
         CDX = DCMPLX (DB10(I,J+2), DB20(I+1,J+2))
         DC3 = CD20(I+1) * CDX - CD10(J+2)
         CD10(J+2) = DC3
         CDX = DCMPLX (DB10(I,J+3), DB20(I+1,J+3))
         DC4 = CD20(I+1) * CDX - CD10(J+3)
         CD10(J+3) = DC4
        END DO
        DO J=II5,20,1
         CDX = DCMPLX (DB10(I,J), DB20(I+1,J))
         DC5 = CD20(I+1) * CDX - CD10(J)
         CD10(J) = DC5
        END DO
        DARG1(I+1) = DX + DY
        IF (LD10(I)) THEN
         DX = DABS (DX - DY)
        ELSE
         DY = DABS (DY - DX)
        END IF
        DO K=10,20
         IF (LD10(K)) THEN
          CDARG(K) = CD10(K) * CD40(I,K)
         ELSE
          CDARG(K) = CD20(K) * CD40(I,K)
         END IF
         CDARG(K+40) = DCMPLX (DB10(I,K), DB20(K,I))
        END DO
        CD20(I+1) = DCMPLX (DX, DY)
       END DO
       DO K=10,17,4

        DO I=1,6,5
         CDARG(K+20) = CD30(K) + CD30(I+1)
         CDARG(K+21) = CD30(K+1) + CD30(I+1)
         CDARG(K+22) = CD30(K+2) + CD30(I+1)
         CDARG(K+23) = CD30(K+3) + CD30(I+1)
         CDARG(K+20) = CD30(K) + CD30(I+2)
         CDARG(K+21) = CD30(K+1) + CD30(I+2)
         CDARG(K+22) = CD30(K+2) + CD30(I+2)
         CDARG(K+23) = CD30(K+3) + CD30(I+2)
         CDARG(K+20) = CD30(K) + CD30(I+3)
         CDARG(K+21) = CD30(K+1) + CD30(I+3)
         CDARG(K+22) = CD30(K+2) + CD30(I+3)
         CDARG(K+23) = CD30(K+3) + CD30(I+3)
         CDARG(K+20) = CD30(K) + CD30(I+4)
         CDARG(K+21) = CD30(K+1) + CD30(I+4)
         CDARG(K+22) = CD30(K+2) + CD30(I+4)
         CDARG(K+23) = CD30(K+3) + CD30(I+4)
         CDARG(K+20) = CD30(K) + CD30(I+5)
         CDARG(K+21) = CD30(K+1) + CD30(I+5)
         CDARG(K+22) = CD30(K+2) + CD30(I+5)
         CDARG(K+23) = CD30(K+3) + CD30(I+5)
        END DO
       END DO

       DO I=1,6,5
        CDARG(38) = CD30(18) + CD30(I+1)
        CDARG(39) = CD30(19) + CD30(I+1)
        CDARG(40) = CD30(20) + CD30(I+1)
        CDARG(38) = CD30(18) + CD30(I+2)
        CDARG(39) = CD30(19) + CD30(I+2)
        CDARG(40) = CD30(20) + CD30(I+2)
        CDARG(38) = CD30(18) + CD30(I+3)
        CDARG(39) = CD30(19) + CD30(I+3)
        CDARG(40) = CD30(20) + CD30(I+3)
        CDARG(38) = CD30(18) + CD30(I+4)
        CDARG(39) = CD30(19) + CD30(I+4)
        CDARG(40) = CD30(20) + CD30(I+4)
        CDARG(38) = CD30(18) + CD30(I+5)
        CDARG(39) = CD30(19) + CD30(I+5)
        CDARG(40) = CD30(20) + CD30(I+5)
       END DO
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (DARG1) ', DARG1
       WRITE (6, *) ' (CDARG) ', CDARG
       STOP 
      END

      BLOCK DATA BKINT
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA40(20), DA30(20), DA20(20), DA10(20)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION DB20(20,20), DB10(20,20)
       COMMON /BLK4/ DB10, DB20
       DIMENSION CD50(20,20), CD40(20,20), CD30(20), CD20(20), CD10(20)
       COMMON /BLK2/ CD10, CD20, CD30, CD40, CD50, CDX
       DIMENSION LD20(20,20), LD10(20)
       COMMON /BLK3/ LD10, LD20
       COMMON /INVK/ IND
       DATA DA10, DA20, DA30, DA40/20*1.D0,20*4.D0,20*2.D0,20*3.D0/ 
       DATA DB10, DB20/400*5.D0,400*6.D0/ 
       DATA CD10, CD20, CD30/60*(1.D0,2.D0)/ 
       DATA CD40, CD50/400*(4.D0,2.D0),400*(2.D0,3.D0)/ 
       DATA CDX/(0.5D0,0.2D0)/ 
       DATA LD10, LD20/20*.TRUE.,400*.FALSE./ 
       DATA IND/1/ 
      END
