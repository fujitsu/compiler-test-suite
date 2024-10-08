      PROGRAM MAIN
      IMPLICIT REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)
      DIMENSION  DA10(50,50),DA20(50,50),DA30(50,50),
     *           DA40(50,50)
      COMMON /BLK/ CD10(50,50),CD20(50,50)

      DATA     DA10/2500*1.0D0/,DA20/2500*2.0D0/
      DATA     DA30/2500*3.0D0/,DA40/2500*4.0D0/
      DATA     NN/50/

      DO 10 I=1,NN
       DX=DFLOAT(I)
       DO 10 J=1,NN
        DY=DFLOAT(J)
        CD10(I,J)=DCMPLX(DX,DY)
        CD20(I,J)=DCMPLX(DY,DX)
  10   CONTINUE

      CALL  SUB1(DA10,DA20,DA30,DA40,NN)
      WRITE(6,9999) 'DA10=',DA10
      WRITE(6,9999) 'DA20=',DA20
      WRITE(6,9999) 'DA30=',DA30
      WRITE(6,9999) 'DA40=',DA40
      WRITE(6,9999) 'CD10=',CD10
      WRITE(6,9999) 'CD20=',CD20
9999  format(a,(10g20.6))
      STOP
      END
      SUBROUTINE SUB1(DA10,DA20,DA30,DA40,NN)
      IMPLICIT  REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)
      DIMENSION  DA10(NN,NN),DA20(NN,NN),DA30(NN,NN),
     *           DA40(NN,NN)
      COMMON /BLK/ CD10(50,50),CD20(50,50)

      NX=NN-3
      DO 999 II=1,NX
        DO 10 I1=1,NX
          DA10(II,I1)=0.0D0
          DO 20 I2=1,NX
            DA10(II,I1)=DA10(II,I1)+DA20(I1,I2)*DA40(I1,I2)
  20      CONTINUE
          DA10(II,I1)=DA10(II,I1)-DA30(II,I1)
  10    CONTINUE

        DO 30 I1=1,NX
          CD10(I1,II)=(0.D0,0.D0)
          DO 30 I2=1,NX
            CD10(I1,II)=CD10(I1,II)+CD20(I1,I2)
  30    CONTINUE
 999  CONTINUE

      NZZ=NX/2
      DO 40 J1=2,NZZ
       DO 40 J2=1,NX
         DA20(J1,J2)=DA30(J1,J2)
         DO 50 J3=1,NX
           DA20(J1,J2)=DA20(J1,J2)+DA10(J2,J3)/DA30(J1,J3)
           CD20(J1,J2)=CD20(J1,J2)+DCMPLX(DA10(J1,J3),DA30(J2,J3))
  50     CONTINUE
         DA20(J1-1,J2)=DA20(J1,J2)-DA40(J1,J2)
  40  CONTINUE

      RETURN
      END
