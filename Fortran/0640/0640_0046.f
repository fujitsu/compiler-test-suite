      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C)
      DIMENSION  DA10(20),DA20(20),DA30(20),DA40(20),
     *           CD10(20),CD20(20),CD30(20)
      DATA   DA10,DA20,DA30,DA40/20*1.D0,20*4.D0,20*3.D0,20*2.D0/
      DATA   CD10,CD20,CD30/30*(2.D0,4.D0),30*(3.D0,9.D0)/

      DO 10 I=11,20
        L = I - 1
        DO 10 J=2,10
          DA10(L) = DA10(I) + DA30(J)
          DA20(I-1) = DA20(I-1) + DA40(J)
          CD10(J-1) = CD20(L-1) * CD10(J)
          L = L - 1
 10   CONTINUE
      WRITE(6,*) ' DA10 = ',DA10
      WRITE(6,*) ' DA20 = ',DA20
      WRITE(6,*) ' CD10 = ',CD10

      DO 20 I=10,2,-1
        LX = I + 1
        LY = 11 - I
        DO 20 J=2,10
          DA40(I) = DA40(I) + DA40(LX)*DA20(J)
          IF ( LY .LT. 1 ) GO TO 25
          CD20(21-I) = CD20(21-I) + CD20(LY) - DA10(J)
          DA30(I+2) = DA30(I+2) + DA30(21-LX)*DIMAG(CD30(J))
 25       LX = LX + 1
          LY = LY - 1
 20   CONTINUE
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (CD20) ',CD20

      DO 30 I=2,10
        L1 = I + 1
        L2 = -I
        DO 30 J=10,20
          IF ( L1 .GT. 20 ) GO TO 35
          IF ( L2 .LT. -20 ) GO TO 35
            DA20(J) = DA30(-L2) - DIMAG(CD20(-L2+1))
            CD30(11-I) = CD30(11-I) + CD30(21+L2)
            DX = DREAL(CD10(J)) * DA40(-L2) / 2.D0
            DY = DIMAG(CD10(J)) * DA40(L1) / 2.D0
            CD10(J) = DCMPLX(DX,DY)
            CD20(I-1) = CD20(I-1) + CD20(-L2)
 35       CONTINUE
          L1 = L1 + 1
          L2 = L2 - 1
 30   CONTINUE
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (CD20) ',CD20
      WRITE(6,*) ' (CD30) ',CD30
      STOP
      END
