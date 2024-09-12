      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      DIMENSION  DA10(20),DA20(20),DA30(20),DA40(20),
     *           CD10(20),CD20(20),CD30(20),
     *           LD10(20),LD20(20),LD30(20)

      DATA   DA10,DA20,DA30,DA40/20*1.D0,20*2.D0,20*3.D0,20*4.D0/
      DATA   CD10,CD20,CD30/30*(2.D0,1.D0),30*(1.5D0,4.D0)/
      DATA   LD10,LD20,LD30/60*.FALSE./
      DATA   IT1/1/,IT2/2/,IT3/3/,IT4/10/

      N1 = 2
      DO 10 I=2,IT4
        N2 = I+IT1
        DO 20 J=N2,20
          DA10(N2-1) = DA10(N2-1) + DA40(J)
          DA20(J) = DA30(I+N1) * DREAL(CD20(J))
          DX = DA10(N2)
          DY = DA20(J-N1)
          CD30(J) = CD30(J) + DCMPLX(DX,DY)
          IF ( DX .GT. DY ) THEN
            DA40(J-N1) = DX - DY
            LD10(J) = .TRUE.
          ELSE
            DA30(N2) = DA30(N2) + DIMAG(CD20(J))
            LD20(J) = .TRUE.
          ENDIF
          N3 = J-1
          IF ( LD10(J) ) THEN
            CD10(N3) = CD10(J) - CD30(N3)
          ENDIF
          IF ( LD20(J) ) THEN
            CD20(N3) = CD30(J) - CD10(N3)
          ENDIF
 20     CONTINUE
 10   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (CD20) ',CD20
      WRITE(6,*) ' (CD30) ',CD30

      N1 = -1
      DO 30 I=1,IT3
        IF ( LD10(I) ) THEN
          N2 = I
        ELSE
          N2 = I+1
        ENDIF
        N3 = I+IT2
        DO 30 J=IT4,N3,-1
          DX = REAL(CD10(J)) + DIMAG(CD30(J+N1))
          DY = DA10(N3) - DIMAG(CD20(J+N2))
          DZ =DABS(DX-DY)
          N4 = J
          IF ( DX.GT.DY ) THEN
            LD30(J) = .TRUE.
            N4 = J + IT1
            DZ = DA20(N4)
            IF ( DZ .GT. DX ) THEN
              DA30(N4) = DA30(J) - DX
            ELSE
              DA10(J-N1) = DREAL(CD10(N4))
              N4 = J + IT2
              CD20(N4) = DCMPLX(DY,DZ)
            ENDIF
          ENDIF
          CD10(N3) = CD10(N3) + DCMPLX(DX,DY)
          DA40(J+N3) = DA40(J+I) - DMIN1(DX,DZ)
 30   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (CD20) ',CD20
      WRITE(6,*) ' (LD30) ',LD30

      STOP
      END
