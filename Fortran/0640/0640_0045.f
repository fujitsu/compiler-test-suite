      PROGRAM MAIN
      IMPLICIT  REAL*8(D),INTEGER*2(H),COMPLEX*16(C),LOGICAL*4(L)
      DIMENSION  DA10(50),DA20(50),DA30(-25:25),DA40(0:50),
     *       DB10(-10:0,50),DB20(0:10,50),DB30(-10:10,-50:-1),
     *       CD10(-50:0),CD20(0:50),CD30(-25:25),
     *       LD10(50),LD20(50),HD10(50),HD20(50),LD30(50)
      EQUIVALENCE   (IT1,LT1),(INC,IT2),(HT1,HT2)
      DATA   DA10,DA20,DA30,DA40/50*4.D0,50*3.D0,51*1.D0,51*2.D0/
      DATA   DB10,DB20,DB30/550*1.D0,550*-2.D0,1050*3.D0/
      DATA   CD10,CD20/51*(-1.D0,5.D0),51*(2.D0,-2.D0)/
      DATA   CD30/51*(-2.D0,-3.D0)/
      DATA   LD10,LD20/100*.FALSE./,LD30/30*.FALSE.,20*.TRUE./
      DATA   HD10,HD20/50*1,50*2/
      DATA   IT1,IT2,IT3,IT4/1,2,5,10/,HT1/1/
      DATA   IM1,IM2,IM3/-1,-2,-5/

      N1 = -50
      N2 = -25
      DO 10 I=1,IT2*IT4
        N3 = I+20
        DA10(I) = DA10(N3+IT2) + DA40(I+IM1)
        DX =DREAL(CD10(N1)) * DA20(IM1-N1)
        DY = DIMAG(CD20(-N2+IT2)) - DA30(N2)
        IF ( DX .GT. DY ) THEN
          LD10(I) = .TRUE.
          CD10(N1) = DCMPLX(DX,DY)
          DZ = DMAX1(DX,DY,DA20(N3))
        ELSE
          LD20(N3) = .TRUE.
          CD20(IT1-N2) = DCMPLX(DY,DX)
          DZ = DMIN1(DX,DY,DA30(N2))
        ENDIF
        N1 = N1+1
        CD30(N2) = CD30(N2+1) + CD10(-50)
        DA20(IM2-N1) = DZ
 10   CONTINUE

      N1 = 1
      N2 = 25
      DO 20 I=HT1*IT2,IT1*HT2+IT3
        DA30(N2) = DIMAG(CD30(N2)) - DA20(N1)
        N2 = N2 - 1
        N3 = I+30
        N4 = I+IT1
        DO 30 J=2,IT2*IT4+IT1
          DB20(I,N4) = DB10(-I,I) + DA10(J)
          DB30(I,-N3) = DA40(J-IM3) + DB10(-N1,I)
          IF ( DB20(N1,N4-1) .GT. DB30(-I,-N3+1) ) THEN
            DB10(-I,N4) = DIMAG(CD10(IM2-J)) - DB20(I,I)
            LD30(J) = .TRUE.
          ELSE
            LD10(J) = .TRUE.
            DA40(J) = DB30(I,-I-31) + DB30(N1,-N3)
          ENDIF
          HD10(J) = HD10(J) + J
          HD20(N3) = HD20(N3-HT1) - N3
          N3 = N3 - 1
          N4 = N4 + IT1
 30     CONTINUE
        N1 = N1+1
        DA20(N1-1) = DA20(N1) + DA40(I)
 20   CONTINUE

      N1 = 0
      N2 = -25
      N3 = 25
      DO 40 I=50,30,IM1
        N1 = N1 + INC
        CD30(N2+IT2) = CD10(-I) * CD20(N1+1)
        DX = DREAL(CD30(N2))
        DY = DIMAG(CD30(N2))
        IF ( DX .GT. DY ) THEN
          LD20(N1) = .TRUE.
          DA10(I+IM1+IM2) = DX / DY
          DZ = DA30(N2) - DY
          IF ( DZ ) 40,40,41
 41         CD20(0) = CD20(0) + DMAX1(DX,DY) - DZ
        ENDIF
        IF ( LD10(N1) .OR. (.NOT.LD20(-N2+IM3).AND.LD30(J)) ) THEN
          CD10(-IM3-I) = DCMPLX(DX,DY)
          LD10(N1) = .TRUE.
        ENDIF
        N2 = N2 + HT1
        N3 = N3 + IT1
 40   CONTINUE

      DO 50 I=IT1*IT2,HT1*IT4,HT2
        IL1 =I-10
        DA30(IL1) = DA30(I) + DA40(I+IM2)
        N1 = I
        N2 = I+IM1
        N3 = I+IT1
        DO 50 J=IT4,IT4*2+IT3
          IF ( LD10(I) .OR. LD20(N1) .OR. LD30(J) ) THEN
            DB30(IL1,-N2) = DA20(J+IM3+IT1) - DA30(J-IT4+IT1)
            DB20(I,N3) = DB10(-I,N1) + DA40(0+N1)
            DB10(IL1,N1) = DA10(J+IT4) - DB30(I+IM2,-I)
            DA40(N1-IM2) = DB30(I,IM2-I) * DB20(I,I) - DA30(J)
          ENDIF
          N2 = N2 + 1
          N3 = N3 + IT1
          N1 = N1 + INC
 50   CONTINUE
      WRITE(6,99) ' (DA10) ',DA10
      WRITE(6,99) ' (DA20) ',DA20
      WRITE(6,99) ' (DA30) ',DA30
      WRITE(6,99) ' (DA40) ',DA40
      WRITE(6,99) ' (DB10) ',DB10
      WRITE(6,99) ' (DB20) ',DB20
      WRITE(6,99) ' (DB30) ',DB30
      WRITE(6,99) ' (CD10) ',CD10
      WRITE(6,99) ' (CD20) ',CD20
      WRITE(6,99) ' (CD30) ',CD30
      WRITE(6,*) ' LD10 = ',LD10,' LD20 = ',LD20
      WRITE(6,*) ' (LD30) ',LD30
  99  FORMAT(A,(4D14.7))
      STOP
      END
