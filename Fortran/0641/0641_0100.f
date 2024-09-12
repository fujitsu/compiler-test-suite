      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA10(20), DA20(20), DA30(20), DB10(20,20), DB20(20,20),
     X    DB30(20,20), ID10(20), ID20(20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20), CD40(20), CD50(
     X   20)
       DATA DA10/20*1.D0/ 
       DATA DA20/20*2.D0/ 
       DATA DA30/20*4.D0/ 
       DATA DB10/400*2.D0/ 
       DATA DB20/400*4.D0/ 
       DATA DB30/400*6.D0/ 
       DATA CD10/400*(4.D0,2.D0)/ 
       DATA CD20/400*(1.D0,1.D0)/ 
       DATA CD30/400*(2.D0,2.D0)/ 
       DATA CD40/20*(4.D0,16.0D0)/ 
       DATA CD50/20*(2.D0,4.D0)/ 
       DATA ID10/20*1/ 
       DATA ID20/20*0/ 
       INTEGER II4, II3, II2, II1, K1, J1, I1
       DOUBLE PRECISION DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC1
       IVAL1 = 1
       IVAL2 = 2
       DO I1=1,20
        IF (IVAL1 .LE. 15) THEN
         DO J1=10,17,4
          DA10(1) = DA20(J1) + DA30(J1)
          DA10(1) = DA20(J1) - DA10(J1) + DA10(1)
          DA10(1) = DA20(J1+1) + DA30(J1+1)
          DA10(1) = DA20(J1+1) - DA10(J1+1) + DA10(1)
          DA10(1) = DA20(J1+2) + DA30(J1+2)
          DA10(1) = DA20(J1+2) - DA10(J1+2) + DA10(1)
          DA10(1) = DA20(J1+3) + DA30(J1+3)
          DA10(1) = DA20(J1+3) - DA10(J1+3) + DA10(1)
         END DO
         DO J1=18,20,1
          DA10(1) = DA20(J1) + DA30(J1)
          DA10(1) = DA20(J1) - DA10(J1) + DA10(1)
         END DO
         DD1 = DA20(2)
         DO J1=10,17,4
          DD1 = DD1 - DB20(I1,J1) + DA10(J1) * DA30(J1)
          DD1 = DD1 - DB20(I1,J1+1) + DA10(J1+1) * DA30(J1+1)
          DD1 = DD1 - DB20(I1,J1+2) + DA10(J1+2) * DA30(J1+2)
          DD1 = DD1 - DB20(I1,J1+3) + DA10(J1+3) * DA30(J1+3)
         END DO
         DO J1=18,20,1
          DD1 = DD1 - DB20(I1,J1) + DA10(J1) * DA30(J1)
         END DO
         DA20(2) = DD1
         CALL SUB1 (CD40(I1),CD50(I1),DA10(1),DA20(2))
   30    ASSIGN 30 TO JJ
         IF (IVAL2 .GT. 40) THEN
          ASSIGN 40 TO JJ
         END IF
         ID10(I1) = ID20(I1) + ID10(I1)
         IVAL2 = IVAL2 + ID10(I1) + IDINT (DA20(I1))
         GO TO JJ, (30, 40)
   40    IVAL1 = IVAL1 + ID20(I1)
         DO J1=2,8,3
          DD5 = DB20(I1,J1) + DB30(I1,J1)
          DD6 = DB20(I1,J1+1) + DB30(I1,J1+1)
          DD7 = DB20(I1,J1+2) + DB30(I1,J1+2)
          DD3 = DMAX1 (DD5, DB10(I1,J1+10))
          DD4 = DMAX1 (DD6, DB10(I1,J1+11))
          DD2 = DMAX1 (DD7, DB10(I1,J1+12))
          DB20(I1,J1+10) = DD3 + DB30(J1,I1)
          DB20(I1,J1+11) = DD4 + DB30(J1+1,I1)
          DB20(I1,J1+12) = DD2 + DB30(J1+2,I1)
          DD3 = DIMAG (CD20(J1,I1))
          DD4 = DIMAG (CD20(J1+1,I1))
          DD2 = DIMAG (CD20(J1+2,I1))
          DB10(I1,J1) = DD5
          DD8 = DB30(J1+1,J1-1) + DD3
          DB10(I1,J1+1) = DD6
          DD9 = DB30(J1+2,J1) + DD4
          DB10(I1,J1+2) = DD7
          DB30(J1+2,J1+2) = DB30(J1+3,J1+1) + DD2
          DB30(J1+1,J1+1) = DD9
          DB30(J1,J1) = DD8
         END DO


         DVAL1 = 0D0
         DVAL2 = 0D0
         DC1 = CD40(I1)
         DO J1=1,17,4
          DC1 = DC1 + CD50(J1) - CD20(I1,J1) + CD10(I1,J1)
          DC1 = DC1 - CD30(I1,J1)
          DVAL1 = MAX (DVAL1, DIMAG (CD20(I1,J1)))
          DVAL2 = DVAL2 + DREAL (CD10(J1,I1)) + DIMAG (CD50(J1))
          DC1 = DC1 + CD50(J1+1) - CD20(I1,J1+1) + CD10(I1,J1+1)
          DC1 = DC1 - CD30(I1,J1+1)
          DVAL1 = MAX (DVAL1, DIMAG (CD20(I1,J1+1)))
          DVAL2 = DVAL2 + DREAL (CD10(J1+1,I1)) + DIMAG (CD50(J1+1))
          DC1 = DC1 + CD50(J1+2) - CD20(I1,J1+2) + CD10(I1,J1+2)
          DC1 = DC1 - CD30(I1,J1+2)
          DVAL1 = MAX (DVAL1, DIMAG (CD20(I1,J1+2)))
          DVAL2 = DVAL2 + DREAL (CD10(J1+2,I1)) + DIMAG (CD50(J1+2))
          DC1 = DC1 + CD50(J1+3) - CD20(I1,J1+3) + CD10(I1,J1+3)
          DC1 = DC1 - CD30(I1,J1+3)
          DVAL1 = MAX (DVAL1, DIMAG (CD20(I1,J1+3)))
          DVAL2 = DVAL2 + DREAL (CD10(J1+3,I1)) + DIMAG (CD50(J1+3))
         END DO
         CD40(I1) = DC1
         WRITE (6, *) ' DVAL1 = ', DVAL1, ' DVAL2 = ', DVAL2
         WRITE (6, *) ' (CD40(I)) = ', CD40(I1)

         IF (I1 .GE. IVAL1 .AND. I1 .LE. 19 .OR. I1 .LE. 20) THEN
          II2 = (21 - IVAL1) / 4
          II1 = IVAL1 + II2 * 4
          DO K1=IVAL1,17,4
           CD10(I1,K1) = CD20(I1,K1) + CD30(I1,K1)
           CD30(K1,I1) = CD20(I1,K1) + CD10(K1,I1)
           CD10(I1,K1+1) = CD20(I1,K1+1) + CD30(I1,K1+1)
           CD30(K1+1,I1) = CD20(I1,K1+1) + CD10(K1+1,I1)
           CD10(I1,K1+2) = CD20(I1,K1+2) + CD30(I1,K1+2)
           CD30(K1+2,I1) = CD20(I1,K1+2) + CD10(K1+2,I1)
           CD10(I1,K1+3) = CD20(I1,K1+3) + CD30(I1,K1+3)
           CD30(K1+3,I1) = CD20(I1,K1+3) + CD10(K1+3,I1)
          END DO
          DO K1=II1,20,1
           CD10(I1,K1) = CD20(I1,K1) + CD30(I1,K1)
           CD30(K1,I1) = CD20(I1,K1) + CD10(K1,I1)
          END DO

         ELSE
          II4 = (21 - IVAL1) / 4
          II3 = IVAL1 + II4 * 4
          DO K1=IVAL1,17,4
           CD10(I1,K1) = CD20(I1,K1) + CD30(I1,K1)
           CD30(K1,I1) = CD20(I1,K1) + CD10(K1,I1)
           CD10(I1,K1+1) = CD20(I1,K1+1) + CD30(I1,K1+1)
           CD30(K1+1,I1) = CD20(I1,K1+1) + CD10(K1+1,I1)
           CD10(I1,K1+2) = CD20(I1,K1+2) + CD30(I1,K1+2)
           CD30(K1+2,I1) = CD20(I1,K1+2) + CD10(K1+2,I1)
           CD10(I1,K1+3) = CD20(I1,K1+3) + CD30(I1,K1+3)
           CD30(K1+3,I1) = CD20(I1,K1+3) + CD10(K1+3,I1)
          END DO
          DO K1=II3,20,1
           CD10(I1,K1) = CD20(I1,K1) + CD30(I1,K1)
           CD30(K1,I1) = CD20(I1,K1) + CD10(K1,I1)
          END DO
         END IF
        END IF
       END DO
       I = 21

       WRITE (6, *) ID10
       WRITE (6, *) ((DB10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ((DB20(I,J), I=1,10), J=11,20)
       WRITE (6, *) (DB30(K,K), K=1,10)
       WRITE (6, *) ' IVAL1 = ', IVAL1, ' IVAL2 = ', IVAL2

       STOP 
      END
    
      SUBROUTINE SUB1 ( CDX, CDY, DX, DY )
       COMPLEX*16 CDX, CDY, CDX1, CDY1
       REAL*8 DX, DY, DUMY1(2), DUMY2(2)
       EQUIVALENCE (CDX1, DUMY1), (CDY1, DUMY2)

       CDX1 = CDX
       CDY1 = CDY
       DUMY1(1) = DMAX1 (DX, DY)
       DUMY1(2) = DDIM (DX, DY)
       DUMY2(1) = DMIN1 (DX, DY)
       DUMY2(2) = DDIM (DY, DX)
       CDX = CDX1
       CDY = CDY1

       WRITE (6, *) CDX1, CDY1
       WRITE (6, *) DX, DY
       RETURN 
      END
