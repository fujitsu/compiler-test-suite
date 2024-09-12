      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      DIMENSION  DA10(20,20),DA20(20,20),DA30(20,20),DA40(20,20),
     *           CD10(20,20),CD20(20,20),CD30(20,20),
     *           LD10(20,20),LD20(20,20),LD30(20,20)

      DATA   DA10,DA20/400*1.D0,400*2.D0/
      DATA   DA30,DA40/400*3.D0,400*4.D0/
      DATA   CD10,CD20/400*(2.D0,1.D0),400*(1.5D0,4.D0)/
      DATA   CD30/400*(1.5D0,4.D0)/
      DATA   LD10,LD20,LD30/1200*.FALSE./
      DATA   IT1/1/,IT2/2/,IT3/3/,IT4/10/

      N1 = 2
      DO 10 I=2,IT4
        N2 = I+IT1
        DO 30 K1=1,IT4+2
         DO 30 K2=2,IT4+3
          CD10(K1,K2) = CD20(K1,K2+1)-CD30(K1,K2)
          DA10(K1,K2) = DA10(K1,K2+1)+DIMAG(CD10(K1,K2-1))
          IF ( .NOT.LD20(K1,K2) ) THEN
            LD10(K1,K2) = .TRUE.
            DA40(K1,K2+2) = REAL(CD10(K1,K2))
          ENDIF
 30     CONTINUE

        DO 20 J1=1,20
         DO 20 J2=1,20
          DO 20 J3=1,20
           DA10(J1,J3) = DA20(J1,J3)*DA40(J1,J3)
           DA30(J1,J3) = DA30(J1,J3)*2.D0
  20    CONTINUE

        IF ( LD10(I,20).OR.LD30(I,20) ) THEN
          LD20(I,20) = .TRUE.
          CD10(I,20) = (1.D0,2.D0)
          GO TO 10
        ENDIF

        DO 40 I1=IT2,15
         DO 50 I2=IT3,15
          DO 50 I3=IT4,18
            DA20(I2,I3) = DA20(I2-1,I3-1)+DA30(I2,I3+1)
            DX = DIMAG(CD30(I2,I3))-DA40(I1,I2)
            DY = DREAL(CD20(I2,I3))+DA30(I1,I2)
            IF ( DX.GT.DY ) THEN
              LD10(I2,I3) = .TRUE.
              CD20(I2,I3) = DCMPLX(DX,DY)
            ELSE
              LD20(I2,I3) = .TRUE.
              CD30(I2,I3) = DCMPLX(DY,DX)
            ENDIF
  50     DA30(I2,I3) = DMAX1(DX,DY,DA20(I2,I3))

         DO 60 II=1,20
         DO 60 I4=1,20
           IF ( LD10(II,I4).OR.LD20(II,I4) ) THEN
             CD10(II,I4) = CD10(II,I4)+DCMPLX(DA10(II,I4))
             LD10(II,I4) = .NOT.LD10(II,I4)
           ENDIF
  60     CONTINUE

         IF ( LD10(N2,I1).AND.LD20(I,I1) ) GO TO 10

         DO 70 I5=N1,IT4*2
          DO 70 I6=N2,IT4*2
           DA20(I5,I6)=DA10(I5,I6)-DMAX1(DA30(I5,I6),DA40(I5,I6))
 70      CONTINUE
 40    CONTINUE

 10   CONTINUE

      WRITE(6,*) '### (DA10) ###'
      WRITE(6,99) DA10

      WRITE(6,*) '### (DA20) ###'
      WRITE(6,99) DA20

      WRITE(6,*) '### (DA30) ###'
      WRITE(6,99) DA30

      WRITE(6,*) '### (DA40) ###'
      WRITE(6,99) DA40

      WRITE(6,*) '### (CD10) ###'
      WRITE(6,99) CD10

      WRITE(6,*) '### (CD20) ###'
      WRITE(6,99) CD20

      WRITE(6,*) '### (CD30) ###'
      WRITE(6,99) CD30

 99   FORMAT(4(1X,E17.5))
      STOP
      END
