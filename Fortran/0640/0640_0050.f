      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      DIMENSION   DA10(20,20),DA20(40,10),DA30(10,40),DA40(20,20),
     *          CD10(20,20),CD20(10,40),CD30(40,10),
     *          LD10(20),LD20(20,20),LD30(20,20),
     *          IL10(20),IL20(20),IL30(40)

      DATA   DA10,DA20/400*1.0D0,200*4.D0,200*2.D0/
      DATA   DA30,DA40/400*3.D0,200*5.D0,200*6.D0/
      DATA   CD10,CD20/400*(-1.D0,-2.D0),400*(2.D0,4.D0)/
      DATA   CD30/400*(-3.D0,5.D0)/
      DATA   LD10,LD20,LD30/820*.FALSE./

      DO 10 I=1,20
        IL10(I) = I
 10     IL20(I) = 21-I
      DO 15 I=1,40
 15     IL30(I) = I

      DO 20 I=2,IL10(10)
        NN = IL20(I)
        DO 20 J=2,NN
          IP = IL30(J+1)
          JP = IL30(41-J)
          DA10(IL10(I),IL20(J)) = DA20(IP,I) * DA30(I,JP)
          CD10(J,IP) = CD20(I,JP) + DCMPLX(DA40(J,IP))
          DA40(J,I) = DIMAG(CD30(JP,I)) - DA10(I-1,IL20(J))
          DX = DFLOAT(JP)
          IF ( DA40(J,I) .LT. DX ) THEN
            LD10(J) = .NOT.LD20(I,IP)
          ELSE
            LD20(I,J) = .NOT.LD30(NN,J)
          ENDIF
 20   CONTINUE

      NN = 1
 30   CONTINUE
      M1 = IL10(NN)
      M2 = MIN(2,IL30(NN))

      DO 40 I=1,IL10(5)
        K1 = IL10(I)
        K2 = I+M1+M2
        DO 40 J=2,K2
          IP1= J+K1+1
          IP2= J+K1-1
          JP1= J+M2+K2
          JP2= J+M2-1
          DA20(JP2,K1) = DA20(JP1,I) + DA30(M1,JP2)
          DA30(I,JP1) = DMAX1(DA10(I,J),DA40(IP1,I))
          IF (LD10(J)) THEN
           CDX = CD10(IP2,J) * CD20(I,IP1)
           CDY = CD30(IP2,I) + CD10(I,J)
          ELSE
           CDX = CD30(IP1,K1) - CD10(J,IP2)
           CDY = CD20(K1,JP1)
          ENDIF
          DX = DREAL(CDX)
          DY = DIMAG(CDY)
          CD20(K1,JP2) = DCMPLX(DX,DY)
          CD30(IP2,I) = CDX + CDY
          CD10(IP2,J) = CDX - CDY
          IF ( DX .GT. DY ) THEN
            LD30(I,J) = .TRUE.
            DA10(I+M2,J) = DX
          ELSE
            LD20(I,J) = .TRUE.
            DA10(J,I) = DY
          ENDIF
          LD10(J) = .NOT.LD20(J,I) .OR. LD30(J,I)
 40   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (CD20) ',CD20
      WRITE(6,*) ' (CD30) ',CD30
      WRITE(6,*) ' (LD10) ',LD10
      WRITE(6,*) ' (LD20) ',LD20
      WRITE(6,*) ' (LD30) ',LD30
      STOP
      END
