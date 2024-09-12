      PROGRAM MAIN
      IMPLICIT   REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
      COMMON  /BLK1/  DA10(20),DA20(20),DA30(20),DA40(20)
      COMMON  /BLK2/  IL10(20),IL20(20),LD10(20),LD20(20)
      COMMON  /BLK3/  CD10(20),CD20(20),CD30(20)
      DIMENSION     DB10(20),DB20(40),DB30(40)
      COMMON  /BLK4/  DX,DY,N1,IT1
      EQUIVALENCE  (DA10(1),DB10(1)),(DA10(1),DB20(1))
      EQUIVALENCE  (DB30(40),DA40(20)),(DX,DZ),(N1,NI),(N2,NJ)
      EQUIVALENCE  (CDV,DX),(LD10(1),LX),(LD20(1),LY)

      DO 10 I=1,20
        IL10(I) = I
 10     IL20(I) = 21-I

      NN = 0
      N2 = 1
      DO 20 NI=1,19,2
        NN = NN + 1
        IT1 = NI*2
        DA10(N2) = DA20(IL10(NI)) * 2.D0 - DB20(IT1)
        CDV = CD10(N1) + ( CD30(NI+N2) - CD20(NI+NJ) )
        CD30(NI) = CD30(NI) + CDV
        CD20(NI) = CDV - CD20(N1)
        CD10(NI) = DCMPLX(DY,DX)
        IF ( DZ .GE. DY ) THEN
          LD10(NN) = .TRUE.
          DA30(IL20(NI)) = DZ
        ELSE
          LD20(NN) = .TRUE.
          DA40(IL10(NI)) = DY
        ENDIF
 20   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (CD20) ',CD20
      WRITE(6,*) ' (CD30) ',CD30
      WRITE(6,*) ' (LD10) ',LD10
      WRITE(6,*) ' (LD20) ',LD20

      DO 30 I=1,10
        NI = I+10
        NJ = I+20
        IT1= I+30
        DA10(I) = DMIN1(DA10(NI),DB20(NJ)) - DB30(IT1)
        IF ( LX .OR. LY ) THEN
          DX = DX + DMIN1(DA30(I),DA30(NI))
        ELSEIF ( LD10(NI) .OR. LD20(NI) ) THEN
          DY =  DMAX1(DY,DA40(I))
        ENDIF
        IL10(I) = IL20(NI) - N1
        IL20(I) = N2 - IL10(NI)
        DA30(I) = DB30(IT1) - DIMAG(CD10(I))
 30   CONTINUE
      WRITE(6,*) ' (RX,RY) ',CDV
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (IL10) ',IL10
      WRITE(6,*) ' (IL20) ',IL20
      WRITE(6,*) ' (DA30) ',DA30
      STOP
      END
      BLOCK DATA   INIT
      IMPLICIT   REAL*8(D),LOGICAL*4(L),COMPLEX*16(C)
      COMMON   /BLK1/  DA10(20),DA20(20),DA30(20),DA40(20)
      COMMON   /BLK2/  IL10(20),IL20(20),LD10(20),LD20(20)
      COMMON   /BLK3/  CD10(20),CD20(20),CD30(20)
      COMMON   /BLK4/  DX,DY,N1,IT1
      DATA   DA10,DA20,DA30,DA40/20*1.D0,20*4.D0,20*3.D0,20*2.D0/
      DATA   LD10,LD20/40*.FALSE./
      DATA   CD10,CD20,CD30/30*(2.D0,1.D0),30*(1.D0,4.D0)/
      DATA   DX,DY/0.0D0,1.0D0/
      DATA   N1,IT1/0,1/
      END
