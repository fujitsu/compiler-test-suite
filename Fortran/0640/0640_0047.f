      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      DIMENSION  DA10(20,20),DA20(20,20),DA30(20,20),DA40(20,20),
     *           CD10(20,20),CD20(20,20),CD30(20,20),LD10(20)
      DATA   DA10,DA20,DA30,DA40/400*5.D0,400*2.D0,400*1.D0,400*3.D0/
      DATA   CD10,CD20/400*(2.D0,1.D0),400*(1.D0,3.D0)/
      DATA   CD30/400*(2.D0,4.D0)/,LD10/20*.FALSE./
      EQUIVALENCE   (CDX,DX),(NI,N1),(NJ,N2)
      NI = 2
      DO 10 I=1,10
        IP = I+10
        NJ = I+1
        DO 20 J=IP,20
          DA10(NI,NJ) = DA20(IP,J) - DA30(NJ,I+1)
          CD10(NJ,NI) = CD20(NJ,J) * CD30(I,NJ-1)
          CDX = CD10(I,J)
          DY = IMAG(CDX)
          IF ( DX .LE. DY ) THEN
            LD10(J) = .TRUE.
            DA20(I,NJ) = DA40(I,J) + (DY-DX)
            DA40(NI,IP) = DA40(NI,IP) + DMIN1(DY,DX)
          ENDIF
          DA30(I,J) = DIMAG(CD10(I,NJ)) + DA20(IP,J)
          DZ = DA30(I,J) - DX
          IF ( DZ .GE. DY ) THEN
            LD10(J-1) = .NOT. LD10(J)
            CD20(I,J) = DCMPLX(DZ,DY)
          ENDIF
          NJ = NJ + 1
 20     CONTINUE
        NI = NI+1
 10   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (LD10) ',LD10

      IT1 = 5
      DO 30 I=1,IT1
        NI = 21 - I
        NJ = I*2
        DO 30 J=5,15,2
          DA40(NJ,J) = DA30(NI,J) - DA20(I,J)
          IF ( LD10(J) ) THEN
            DX = DREAL(CD10(J,NI))
            DY = DIMAG(CD20(NJ,I))
            DA30(11-I*2,J+1) = DABS(DX-DY)
            CD20(I,NJ) = DCMPLX(DY,DX)
          ENDIF
          DA20(NJ,J) = DMAX1(DA20(I,J),DA40(I,J))
          NJ = NJ+1
 30   CONTINUE
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (CD20) ',CD20
      STOP
      END
