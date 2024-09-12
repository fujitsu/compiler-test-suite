      PROGRAM MAIN
      IMPLICIT     REAL*8(D),INTEGER*4(I),LOGICAL*4(L)
      DIMENSION    DA10(100),DA20(100),DA30(100),DA40(100),
     *             DB10(50,50),DB20(50,50),DB30(50,50),DB40(50,50)
      DIMENSION    ID10(100),ID20(100),ID30(100),ID40(100),
     *             ID50(50,50),ID60(50,50),ID70(-100:0)
      DIMENSION    LD10(100),LD20(100),LD30(50,50)

      DATA    DA10/100*2.0D0/,DA20/100*3.0D0/,DA40/100*4.0D0/
      DATA    DA30/100*5.0D0/
      DATA    DB10/2500*1.0D0/,DB20/2500*2.0D0/,DB30/2500*3.0D0/
      DATA    DB40/2500*5.0D0/
      DATA    ID50/2500*2/,ID60/2500*4/,ID70/101*8/
      DATA    LD10/100*.FALSE./,LD20/100*.FALSE./,LD30/2500*.FALSE./
      DATA    IT1/1/,IT2/2/,IT3/3/,IT4/5/,IT5/10/,IT6/20/,IT7/40/
      IT4 = IT4 + 1
      IVAL1 = 100
      IVAL2 = 1
      DO 5 I=1,100
        ID10(I) = I
        ID20(I) = IVAL2
        ID30(I) = IVAL1
        ID40(I) = I + IVAL2
        IVAL1 = IVAL1 - 1
        IVAL2 = IVAL2 + 2
        IF ( IVAL2.GT.100 ) THEN
          IVAL2 = 2
        ENDIF
        IF (I.LE.50) THEN
          LD20(I*2) = .TRUE.
        ENDIF
 5    CONTINUE

      INV1 = 1
      INV2 = 100

      DO 10 I=1,IT6+IT5*2
        DA10(I) = DA20(INV2) + DA30(INV1) + DA40(I*2)
        ID40(I) = ID40(I) * 2 + ID30(I*2-1) - ID10(I)
        DA30(INV1 ) = DA10(I+IT2) - DB40(I,I+1)
        DA20(INV2-1) = DA30(INV1+1) * 2.0D0 - DA40(I+5)
        IF ( LD20(I) ) THEN
          ID30(I*2)  = ID10(I+1) * ID20(INV2-1)
          ID40(I+2)   = ID20(INV2) + ID30(I)
        ELSEIF ( ID30(I).GT.ID40(I) ) THEN
          LD10(I) = .TRUE.
          DA30(INV1*2) = DA20(INV2-1) * DA40(I)
        ENDIF
        ID20(INV2) = ID10(I*2) - ID40(I) + ID70(-I)
        INV1 = INV1 + 1
        INV2 = INV2 - 2
 10   CONTINUE

      WRITE(6,999) (DA10(K),K=1,50)
      WRITE(6,999) (DA30(K),K=1,100,2)
      WRITE(6,999) (DA20(K),K=100,50,-1)
      WRITE(6,99) (ID20(K),K=100,51,-1)
      WRITE(6,99) (ID30(K),K=2,100,2)
      WRITE(6,99) (ID40(K),K=3,53)
      WRITE(6,*) (LD10(K),K=1,50)

      IVAL1 = 0
      INDX = 0
      DO 20 I=2,30
        DA40(I*2) = DA10(ID10(I)) + DA20(ID10(I+1)) - DA30(I+IT7)
        DA10(ID10(I)) = DA30(I) - DB20(I,I+1) + DB20(I+1,I)
        IF ( LD10(I) .OR. .NOT.LD20(101-I) ) THEN
          DO 25 J=IT6,3,-1
            DB30(I,J*2) = DB10(51-I,51-J) + DB20(I,J)
            DB10(51-I,50-J) = DB40(I,J+IT6) * DB20(I,J)
            DB40(I,J) = DB10(J+1,I) - DB30(J*2-1,I+1)
 25       CONTINUE
        ENDIF
        LD20(I) = .NOT.(LD20(I))
        DA20(ID10(I)) = DA40(I*2+11) * 2.0D0
 20   CONTINUE
      WRITE(6,999) (DA10(K),K=2,30)
      WRITE(6,999) (DA20(K),K=2,30)
      WRITE(6,999) (DA40(K),K=4,60,2)
      WRITE(6,*) (LD20(K),K=2,30)
      WRITE(6,999) ((DB10(I,J),I=49,21,-1),J=30,47)
      WRITE(6,999) ((DB30(I,J),I=2,30),J=40,6,-2)
      WRITE(6,999) ((DB40(I,J),I=2,30),J=20,3,-1)

      DO 30 I=3,IT6
        ID70(1-I) = ID70(-I) * ID10(I+IT2) - ID30(I+IT1+IT3)
        ID30(I+IT2) = ID70(-IT6-I) - ID20(I+IT6)
        DO 35 J=3,IT5*2
          ID50(I+IT1,J) = ID60(I+IT1,J+IT2) * 2 - ID50(J+1,I+IT3)
          ID60(J,I) = ID50(I+1,J-IT1) * ID40(J+IT5)
 35     CONTINUE
        ID20(I) = ID70(-I) + ID30(I+IT3) * 2
 30   CONTINUE
      WRITE(6,99) (ID20(K),K=3,20)
      WRITE(6,99) (ID30(K),K=5,22)
      WRITE(6,99) ((ID50(I,J),I=6,23),J=3,20)
      WRITE(6,99) ((ID60(I,J),I=3,20),J=6,23)
      WRITE(6,99) (ID70(K),K=-2,-19,-1)

      IVAL1 = 0
      IVAL2 = 0
      INDX  = 0
      DO 45 I=1,50
        IVAL = MAX(ID20(I),ID30(I),ID40(I))
        IF ( ID10(I) .GE. IVAL ) THEN
          IVAL1 = MAX(IVAL1,IVAL)
        ELSE
          IVAL1 = MAX(IVAL1,ID10(I))
          LD10(I) = .TRUE.
        ENDIF
        DO 40 J=1,50
          ID50(I,J) = MAX(ID60(I,J),ID50(I,J))
          IF (ID50(I,J).GE.IVAL2 ) THEN
            IVAL2 = ID50(I,J)
            INDX  = J
            LD30(I,J) = .TRUE.
          ENDIF
 40     CONTINUE
        WRITE(6,*) ' ** IVAL2 = ',IVAL2,' ** INDX = ',INDX,' ** ',
     *             ' ID50(I,INDX) ',ID50(I,INDX)
 45   CONTINUE
      WRITE(6,*) ' ** IVAL1 = ',IVAL1
 99   FORMAT (8(1X,I10))
 999  FORMAT (8(2X,F8.3))

      STOP
      END
