      PROGRAM MAIN
       IMPLICIT REAL*8 (D), INTEGER*4 (I), LOGICAL*4 (L)
       DIMENSION DA10(100), DA20(100), DA30(100), DA40(100), DB10(50,50)
     X   , DB20(50,50), DB30(50,50), DB40(50,50)
       DIMENSION ID10(100), ID20(100), ID30(100), ID40(100), ID50(50,50)
     X   , ID60(50,50), ID70(-100:0)
       DIMENSION LD10(100), LD20(100), LD30(50,50)
       INTEGER IT7, IT6, IT5, IT3, IT2, IT1
       PARAMETER (IT7 = 40, IT6 = 20, IT5 = 10, IT3 = 3, IT2 = 2)
       PARAMETER (IT1 = 1)

       DATA DA10/100*2.0D0/ 
       DATA DA20/100*3.0D0/ 
       DATA DA40/100*4.0D0/ 
       DATA DA30/100*5.0D0/ 
       DATA DB10/2500*1.0D0/ 
       DATA DB20/2500*2.0D0/ 
       DATA DB30/2500*3.0D0/ 
       DATA DB40/2500*5.0D0/ 
       DATA ID50/2500*2/ 
       DATA ID60/2500*4/ 
       DATA ID70/101*8/ 
       DATA LD10/100*.FALSE./ 
       DATA LD20/100*.FALSE./ 
       DATA LD30/2500*.FALSE./ 
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1, J1, I1
       LOGICAL LL4, LL3, LL2, LL1
       IVAL2 = 1
       DO I1=1,100
        ID10(I1) = I1
        ID30(I1) = 101 - I1
        IF (I1 .LE. 50) THEN
         LD20(I1*2) = .TRUE.
        END IF
       END DO
       DO I1=1,100
        ID20(I1) = IVAL2
        ID40(I1) = I1 + IVAL2
        IVAL2 = IVAL2 + 2
        IF (IVAL2 .GT. 100) THEN
         IVAL2 = 2
        END IF
       END DO

       DO I1=1,40
        DA10(I1) = DA20(I1*(-2)+102) + DA30(I1) + DA40(I1*2)
        ID40(I1) = ID40(I1) * 2 + ID30(I1*2-1) - ID10(I1)
        DA20(I1*(-2)+101) = DA30(I1+1) * 2D0 - DA40(I1+5)
        DA30(I1) = DA10(I1+2) - DB40(I1,I1+1)
        IF (LD20(I1)) THEN
         ID30(I1*2) = ID10(I1+1) * ID20(I1*(-2)+101)
         ID40(I1+2) = ID20(I1*(-2)+102) + ID30(I1)
        ELSE
         IF (ID30(I1) .GT. ID40(I1)) THEN
          LD10(I1) = .TRUE.
          DA30(I1*2) = DA20(I1*(-2)+101) * DA40(I1)
         END IF
        END IF
       END DO

       DO I1=1,37,4
        II2 = I1 - 1
        II3 = I1
        II4 = I1 + 1
        II1 = I1 + 2
        ID20(II2*(-2)+100) = ID10(I1*2) - ID40(I1) + ID70(-I1)
        ID20(II3*(-2)+100) = ID10(I1*2+2) - ID40(I1+1) + ID70(-1-I1)
        ID20(II4*(-2)+100) = ID10(I1*2+4) - ID40(I1+2) + ID70(-2-I1)
        ID20(II1*(-2)+100) = ID10(I1*2+6) - ID40(I1+3) + ID70(-3-I1)
       END DO

       WRITE (6, 999) (DA10(K), K=1,50)
       WRITE (6, 999) (DA30(K), K=1,100,2)
       WRITE (6, 999) (DA20(K), K=100,50,-1)
       WRITE (6, 99) (ID20(K), K=100,51,-1)
       WRITE (6, 99) (ID30(K), K=2,100,2)
       WRITE (6, 99) (ID40(K), K=3,53)
       WRITE (6, *) (LD10(K), K=1,50)

       DO I1=2,30
        DA40(I1*2) = DA10(ID10(I1)) + DA20(ID10(I1+1)) - DA30(I1+40)
        DA10(ID10(I1)) = DA30(I1) - DB20(I1,I1+1) + DB20(I1+1,I1)
        IF (LD10(I1) .OR. .NOT.LD20(101-I1)) THEN
         DO J1=20,5,-3
          DB30(I1,J1*2) = DB10(51-I1,51-J1) + DB20(I1,J1)
          DB10(51-I1,50-J1) = DB40(I1,J1+20) * DB20(I1,J1)
          DB40(I1,J1) = DB10(J1+1,I1) - DB30(J1*2-1,I1+1)
          DB30(I1,J1*2-2) = DB10(51-I1,52-J1) + DB20(I1,J1-1)
          DB10(51-I1,51-J1) = DB40(I1,J1+19) * DB20(I1,J1-1)
          DB40(I1,J1-1) = DB10(J1,I1) - DB30(J1*2-3,I1+1)
          DB30(I1,J1*2-4) = DB10(51-I1,53-J1) + DB20(I1,J1-2)
          DB10(51-I1,52-J1) = DB40(I1,J1+18) * DB20(I1,J1-2)
          DB40(I1,J1-2) = DB10(J1-1,I1) - DB30(J1*2-5,I1+1)
         END DO
        END IF
        DA20(ID10(I1)) = DA40(I1*2+11) * 2D0
       END DO

       DO I1=2,27,4
        LL1 = .NOT.LD20(I1)
        LL2 = .NOT.LD20(I1+1)
        LL3 = .NOT.LD20(I1+2)
        LL4 = .NOT.LD20(I1+3)
        LD20(I1+3) = LL4
        LD20(I1+2) = LL3
        LD20(I1+1) = LL2
        LD20(I1) = LL1
       END DO
       LD20(30) = .NOT.LD20(30)
       I = 31

       WRITE (6, 999) (DA10(K), K=2,30)
       WRITE (6, 999) (DA20(K), K=2,30)
       WRITE (6, 999) (DA40(K), K=4,60,2)
       WRITE (6, *) (LD20(K), K=2,30)
       WRITE (6, 999) ((DB10(I,J), I=49,21,-1), J=30,47)
       WRITE (6, 999) ((DB30(I,J), I=2,30), J=40,6,-2)
       WRITE (6, 999) ((DB40(I,J), I=2,30), J=20,3,-1)

       DO I1=3,20
        DO J1=3,18,3
         ID50(I1+1,J1) = ID60(I1+1,J1+2) * 2 - ID50(J1+1,I1+3)
         ID60(J1,I1) = ID50(I1+1,J1-1) * ID40(J1+10)
         ID50(I1+1,J1+1) = ID60(I1+1,J1+3) * 2 - ID50(J1+2,I1+3)
         ID60(J1+1,I1) = ID50(I1+1,J1) * ID40(J1+11)
         ID50(I1+1,J1+2) = ID60(I1+1,J1+4) * 2 - ID50(J1+3,I1+3)
         ID60(J1+2,I1) = ID50(I1+1,J1+1) * ID40(J1+12)
        END DO
       END DO

       DO I1=3,18,3
        ID20(I1) = ID70(-I1) + ID30(I1+3) * 2
        ID20(I1+1) = ID70(-1-I1) + ID30(I1+4) * 2
        ID20(I1+2) = ID70(-2-I1) + ID30(I1+5) * 2
       END DO

       DO I1=3,18,3
        ID70(1-I1) = ID70(-I1) * ID10(I1+2) - ID30(I1+4)
        ID70(-I1) = ID70(-1-I1) * ID10(I1+3) - ID30(I1+5)
        ID70(-1-I1) = ID70(-2-I1) * ID10(I1+4) - ID30(I1+6)
       END DO

       DO I1=3,18,3
        ID30(I1+2) = ID70(-20-I1) - ID20(I1+20)
        ID30(I1+3) = ID70(-21-I1) - ID20(I1+21)
        ID30(I1+4) = ID70(-22-I1) - ID20(I1+22)
       END DO
       I = 21
       WRITE (6, 99) (ID20(K), K=3,20)
       WRITE (6, 99) (ID30(K), K=5,22)
       WRITE (6, 99) ((ID50(I,J), I=6,23), J=3,20)
       WRITE (6, 99) ((ID60(I,J), I=3,20), J=6,23)
       WRITE (6, 99) (ID70(K), K=-2,-19,-1)

       IVAL1 = 0
       IVAL2 = 0
       INDX = 0
       DO I1=1,50
        IVAL = MAX (ID20(I1), ID30(I1), ID40(I1))
        IF (ID10(I1) .GE. IVAL) THEN
         IVAL1 = MAX (IVAL1, IVAL)
        ELSE
         IVAL1 = MAX (IVAL1, ID10(I1))
        END IF
       END DO
C$OMP PARALLEL SHARED (ID60,ID50) PRIVATE (II5,II6,II7,II8,II9,J1,I1)
C$OMP DO 
       DO J1=1,50
        DO I1=1,46,5
         II5 = MAX (ID60(I1,J1), ID50(I1,J1))
         II6 = MAX (ID60(I1+1,J1), ID50(I1+1,J1))
         II7 = MAX (ID60(I1+2,J1), ID50(I1+2,J1))
         II8 = MAX (ID60(I1+3,J1), ID50(I1+3,J1))
         II9 = MAX (ID60(I1+4,J1), ID50(I1+4,J1))
         ID50(I1+4,J1) = II9
         ID50(I1+3,J1) = II8
         ID50(I1+2,J1) = II7
         ID50(I1+1,J1) = II6
         ID50(I1,J1) = II5
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I1=1,50
        DO J1=1,50
         IF (ID50(I1,J1) .GE. IVAL2) THEN
          IVAL2 = ID50(I1,J1)
          INDX = J1
         END IF
        END DO
        WRITE (6, *) ' ** IVAL2 = ', IVAL2, ' ** INDX = ', INDX, ' ** '
     X    , ' ID50(I,INDX) ', ID50(I1,INDX)
       END DO
       WRITE (6, *) ' ** IVAL1 = ', IVAL1
   99  FORMAT(8(1X,I10))
  999  FORMAT(8(2X,F8.3))

       STOP 
      END
