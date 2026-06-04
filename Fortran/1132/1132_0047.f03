!             CVCT3149            LEVEL=2        DATE=83.08.08
!********************************************************************C
!  1. PROGRAM NAME : CVCT3604                                        C
!  2. PURPOSE      : USER'S INDUCTION TEST                           C
!  3. RESULT       :                                                 C
!  4. ENVIRONMENT  : VPL(3),ADV(EVL)                                 C
!  5. HISTORY      : 1983-05-06                                      C
!********************************************************************C
      PROGRAM  CV3604
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      type TAG
         real*8 :: DA30(20,20) = 1
         complex*16 :: CD20(20,20) = (1.D0,3.D0)
      end type TAG
      type(TAG)st
      DIMENSION  DA10(20,20),DA20(20,20),DA40(20,20), &
                 CD10(20,20),CD30(20,20),LD10(20)
      DATA   DA10,DA20,DA40/400*5.D0,400*2.D0,400*3.D0/
      DATA   CD10/400*(2.D0,1.D0)/
      DATA   CD30/400*(2.D0,4.D0)/,LD10/20*.FALSE./
      EQUIVALENCE   (CDX,DX),(NI,N1),(NJ,N2)
      NI = 2
      DO 10 I=1,10
        IP = I+10
        NJ = I+1
        DO 20 J=IP,20
          DA10(NI,NJ) = DA20(IP,J) - st%DA30(NJ,I+1)
          CD10(NJ,NI) = st%CD20(NJ,J) * CD30(I,NJ-1)
          CDX = CD10(I,J)
          DY = IMAG(CDX)
          IF ( DX .LE. DY ) THEN
            LD10(J) = .TRUE.
            DA20(I,NJ) = DA40(I,J) + (DY-DX)
            DA40(NI,IP) = DA40(NI,IP) + DMIN1(DY,DX)
          ENDIF
          st%DA30(I,J) = DIMAG(CD10(I,NJ)) + DA20(IP,J)
          DZ = st%DA30(I,J) - DX
          IF ( DZ .GE. DY ) THEN
            LD10(J-1) = .NOT. LD10(J)
            st%CD20(I,J) = DCMPLX(DZ,DY)
          ENDIF
          NJ = NJ + 1
 20     CONTINUE
        NI = NI+1
 10   CONTINUE
      WRITE(6,*) ' *** CVCT3604 ** NO.1 *** '
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (DA30) ',st%DA30
      WRITE(6,*) ' (LD10) ',LD10
!
      IT1 = 5
      DO 30 I=1,IT1
        NI = 21 - I
        NJ = I*2
        DO 30 J=5,15,2
          DA40(NJ,J) = st%DA30(NI,J) - DA20(I,J)
          IF ( LD10(J) ) THEN
            DX = DREAL(CD10(J,NI))
            DY = DIMAG(st%CD20(NJ,I))
            st%DA30(11-I*2,J+1) = DABS(DX-DY)
            st%CD20(I,NJ) = DCMPLX(DY,DX)
          ENDIF
          DA20(NJ,J) = DMAX1(DA20(I,J),DA40(I,J))
          NJ = NJ+1
 30   CONTINUE
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (DA30) ',st%DA30
      WRITE(6,*) ' (CD20) ',st%CD20
      STOP
      END
