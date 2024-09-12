      PROGRAM MAIN
      IMPLICIT   INTEGER*2(H)
      REAL*8   DA10(-20:30),DA20(-20:30),DA30(-20:30),DA40(-20:30),
     *         DB10(50,50),DB20(50,50),DB30(50,50),DB40(50,50)
      REAL*8   DX,DY
      INTEGER*4  IA10(50),IA20(50),IA30(50),IA40(50),
     *           IB10(50,50),IB20(50,50),IB30(50,50)
      LOGICAL*4  LD10(50),LD20(50,50)
      COMPLEX*16 CD10(50),CD20(50),CD30(50)

      DATA     DA10/51*2.0D0/,DA20/51*4.0D0/,DA30/51*6.0D0/
      DATA     DA40/10*2.0D0,10*10.0D0,20*1.2D0,11*2.4D0/
      DATA     DB10/2500*1.0D0/,DB20/2500*2.0D0/,DB30/2500*3.0D0/
      DATA     DB40/1000*4.0D0,1000*8.0D0,500*12.0D0/
      DATA     IA10/50*1/,IA20/50*2/,IA30/50*3/,IA40/50*4/
      DATA     IB10/2500*2/,IB20/2500*3/,IB30/2500*6/
      DATA     CD10/50*(2.0D0,4.0D0)/,CD20/50*(3.0D0,9.0D0)/
      DATA     CD30/50*(4.0D0,16.0D0)/
      DATA     LD10/50*.FALSE./,LD20/2500*.FALSE./
      DATA     IT1/1/,IT2/2/,IT3/5/,IT4/10/,IT6/20/,IT7/30/

      HINV = 30
      INV1 = 2
      INV2 = -15
      INV3 = 50
      DO 10 I=2,IT6
        HINV = HINV - 1
        DA20(HINV) = DA30(HINV-2) + DA40(INV2)
        DA30(HINV) = DA10(INV2+1) * DA40(INV2+1)
        INV2 = INV2 + 1
        DA40(INV2) = DA10(INV2+1) - DA20(HINV-1)
        IA10(I+IT2) = IA30(INV1+1) / IA20(INV1+3) + IA40(INV3-3)
        IA40(INV3)  = IA10(IT2) * 2 + IA20(INV1-1)
        INV1 = INV1 + 1
        IA20(INV1) = IA10(I+IT2-1) + IA40(INV3-1)
        INV3 = INV3 - 2
 10   CONTINUE
      WRITE(6,99) (DA20(K),K=29,10,-1)
      WRITE(6,99) (DA30(K),K=29,10,-1)
      WRITE(6,99) (DA40(K),K=-16,2)
      WRITE(6,88) (IA10(K),K=4,22)
      WRITE(6,88) (IA20(K),K=1,20)
      WRITE(6,88) (IA40(K),K=50,10,-2)
      WRITE(6,999) ' ** INV1 = ',INV1,' ** HINV = ',HINV
 99   FORMAT(8F10.3)
 999  FORMAT(a,i4,a,i4)
 88   FORMAT(15I5)

      INV1 = 1
      INV2 = 50
      INV3 = -20

      DO 20 I=-IT2,IT4*2,IT1
        DA10(I-IT1) = DA30(I+2) + DA20(I+IT1) * DA40(INV3)
        DA40(INV3+1) = DA20(I+IT2) - DA10(I+IT4)
        DO 30 J=INV1,IT3*5
          DB10(INV1,J) = DB20(J,IT2) + DB30(INV2,J+1)
          DB20(IT3,J) = DB40(INV2,IT2) * 2.0D0 - DB10(INV1+1,J+1)
          DB30(INV2-1,J) = DB20(J,IT2-1) - DB10(INV1,J+1)
          INV2 = INV2 - 1
 30     CONTINUE
        INV2 = 49
        INV1 = INV1 + 1
        INV3 = INV3 + 1
        DA20(I) = DA40(INV3) + DA10(I-IT1-1) * 2.0D0
 20   CONTINUE
      WRITE(6,99) (DA10(K),K=-3,19)
      WRITE(6,99) (DA20(K),K=-2,20)
      WRITE(6,99) (DA40(K),K=-19,1)
      WRITE(6,99) ((DB10(I,J),I=1,22),J=1,25)
      WRITE(6,99) (DB20(3,K),K=1,25)
      WRITE(6,99) (DB30(K,50-K),K=1,25)

      HINT = 2
      ITRM = 25
      INV1 = 2
      INV2 = 45
      DO 40 I=HINT,ITRM
        CD10(INV1) = CD20(I) + CD30(I+ITRM)
        IA10(INV2+2) = IA20(INV1+HINT) - IA30(I*2)

        DO 45 J=5,25,IT2
          IB30(INV2,J) = IB10(I,J) * IB20(J,INV1) - IB10(I,J)
          IB10(I,J+25) = IB20(J*2,INV1) + IB30(J-1,INV2)
          IB20(J*2-1,INV1) = IA20(J) + IA30(INV2)
 45     CONTINUE
        INV1 = INV1 + 2
        CD20(I+1) = CD10(INV1) * CD30(I)
        CD30(I) = CDSQRT( CD20(I) ** 2 + CD10(INV1-1) ** 2 )
        DX = DNINT( DREAL(CD30(I)) )
        DY = DNINT( DIMAG(CD30(I)) )
        CD30(I) = DCMPLX( DX,DY )
        INV2 = INV2 - 1
 40   CONTINUE
      WRITE(6,99) (CD10(K),K=2,48,2)
      WRITE(6,99) (CD20(K),K=3,26)
      WRITE(6,99) (CD30(K),K=2,25)
      WRITE(6,88) (IA10(K),K=47,25,-1)
      WRITE(6,88) ((IB10(I,J),I=2,25),J=30,50)
      WRITE(6,88) ((IB20(I,J),I=9,49,2),J=2,25,2)
      WRITE(6,88) ((IB30(I,J),I=45,22,-1),J=5,25,2)

      INV = 1
      DO 50 I=1,30
        IF (I.EQ.30) GO TO 55
          IA10(I) = MAX(IA10(I),IA30(I))
          IA20(I) = MAX(IA20(I),IA40(I))
        IA30(I) = IA10(I) - IA20(I)
        IF ( IA30(I) ) 51,52,53
 51       LD20(1,INV) = .TRUE.
          GO TO 55
 52       LD20(2,INV) = .TRUE.
          GO TO 55
 53       LD20(3,INV) = .TRUE.
 55     INV = INV + 1
 50   CONTINUE

      WRITE(6,88) IA10
      WRITE(6,88) IA20
      WRITE(6,88) IA30
      WRITE(6,*) ((LD20(I,J),I=1,3),J=1,50)

      INV1 = 50
      IVAL1 = 0
      IVAL2 = 0
      DO 60 I=1,50
        INV2 = 1
        DO 65 J=1,50
          IVAL1 = MAX(IB10(I,J),IB30(J,INV1))
          IVAL2 = MIN(IB20(INV2,J),IB30(INV1,J))
          IA10(J) = IVAL1 - IABS(IVAL2)
          IF ( IA10(J) ) 65,65,66
 66         IB30(J,INV1) = IA10(J)
            LD10(J) = .TRUE.
 65       INV2 = INV2 + 1
        INV1 = INV1 - 1
 60   CONTINUE
      ICNT1 = 0
      DO 70 I=1,50
       DO 70 J=1,50
         IF ( LD10(J) .AND. LD20(I,J) ) THEN
           ICNT1 = ICNT1 + 1
         ENDIF
 70   CONTINUE

      WRITE(6,*) '  ICNT1 = ',ICNT1
      WRITE(6,88) IA10
      WRITE(6,*) LD10
      WRITE(6,88) IB30

      STOP
      END
