      PROGRAM MAIN
      IMPLICIT  REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
      DIMENSION   DA10(30,30),DA20(30,30),DA30(30,30),
     *            CD10(30,30),CD30(30,30),CD20(30,30),
     *            LD10(30,30)
      DIMENSION   DD10(400),DD20(100),DD30(100),DD40(100)
      DIMENSION   CDE1(30,30),CDE2(30,10),CDE3(30,10),CDE4(30,10)
      DIMENSION   IL(30)
      EQUIVALENCE   (DD10(1),DD20(1)),(DD10(101),DD30(1))
      EQUIVALENCE   (DD10(400),DD40(100))
      EQUIVALENCE   (CDE1(1,1),CDE2(1,1))
      EQUIVALENCE   (CDE1(1,11),CDE3(1,1))
      EQUIVALENCE   (CDE1(1,21),CDE4(1,1))

      DATA   DA10/900*1.D0/,DA20/900*2.D0/,DA30/900*3.D0/
      DATA   CD10/900*(1.D0,2.D0)/,CD20/900*(2.D0,1.D0)/
      DATA   CD30/900*(4.D0,2.D0)/
      DATA   LD10/900*.FALSE./
      DATA   DD10/400*10.0D0/
      DATA   CDE1/900*(2.D0,4.D0)/,IT1/1/,IT2/2/,IT3/10/

      ICNT = 0
      DO 5 I=1,30
 5      IL(I) = 31 - I

      DO 10 III=10,30,10
        N1 = IL(III)
        DO 20 I1=1,N1
          DD20(I1) = DA10(1,I1)
          DD30(I1) = DA20(1,I1)
          DD40(I1) = DA30(1,I1)
            DO 30 J1=2,15
             DO 40 K1=30,20,-1
               DA10(J1,K1) = DA20(J1,K1) + DA30(K1,J1)
 40            DA30(K1,J1) = DA20(J1,K1) + DA10(I1,J1)
             N2 = 30 - J1
             CD10(I1,N2) = CD20(I1,N2) / (2.D0,2.D0)
     *                             + CD30(I1,J1)
             CD20(I1,N2+1) = CD30(I1,J1+1) - CD10(I1,1)
 30         CONTINUE
          DD20(I1) = DD20(I1)+ DD30(I1)- DD40(I1)

        DVAL1 = DMIN1( DD10(I1),DD10(I1+100),DD10(I1+200) )
        IF ( DVAL1 .GT. DIMAG(CDE1(I1,I1)) ) THEN
          LD10(I1,I1) = .TRUE.
        ENDIF
 20     CONTINUE
 10   CONTINUE

        DO 50 I2=IT2,IT3
          DD20(IL(I2)) = DD20(IL(I2)) + DD30(IL(I2)) - DD40(I2)
          DO 55 J2=20,11,-1
            DO 60 K2=J2,30
              DX1 = DNINT( DA10(J2,K2) /3.D0 + DA20(J2,K2) )
              DY1 = DNINT( DA10(J2,K2) /4.D0 + DA30(J2,K2) )
              CDE1(J2,K2) = DCMPLX( DX1,DY1 )
              IF ( DX1 .GT. DY1 ) GO TO 65
                ICNT = ICNT + 1
                DA20(J2,K2) = DX1
                GO TO 66
 65           DA30(J2,K2) = DY1
              GO TO 60
 66           DA10(J2,K2) = DX1 + DY1
 60         CONTINUE
            DA10(20,J2) = DREAL(CD10(I2,J2))
 55       CONTINUE
          DD30(IL(I2)) = DD20(IL(I2)) / 2.0D0
 50     CONTINUE
      WRITE(6,*) ' ICNT = ',ICNT
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (CD20) ',CD20
      WRITE(6,*) ' (CD30) ',CD30
      WRITE(6,*) ' (DD10) ',DD10
      WRITE(6,*) ' (CDE1) ',CDE1
      WRITE(6,*) ' (LD10) ',LD10

      ICNT = 0
      DVAL = 0.0D0
      DO 70 I=1,20,IT1
       DO 70 J=1,20,IT1
         DVAL = DMAX1(DVAL,DA10(I,J),DA20(I,J),DA30(I,J))
         IF ( LD10(I,J) ) THEN
           ICNT = ICNT + 1
         ENDIF
 70   CONTINUE
      WRITE(6,*) ' DVAL = ',DVAL
      WRITE(6,*) ' ICNT = ',ICNT

      STOP
      END
