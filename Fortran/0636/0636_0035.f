      PROGRAM MAIN
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK1/ DA(50,50),DB(50,50),DC(50,50)
      COMMON /BLK2/ DX(50,50),DY(50,50),DZ(50,50)
      COMMON /BLK3/ CD1(50,50),CD2(50,50)
      DIMENSION  CDX(50,50),CDY(50,50)
      EQUIVALENCE (CDX(1,1),DA(1,1))
      EQUIVALENCE (CDY(1,1),DY(1,1))
      DATA  NN/50/
      DO 5 I=1,NN
       DO 5 J=1,NN
        DA(I,J)=DFLOAT(I)
        DB(I,J)=DFLOAT(J)
        DC(I,J)=DB(I,J)-DB(I,J)
  5   CONTINUE
      DO 10 I=1,NN/2+1
       DO 20 J=2,NN
         DA(J,I)=DA(J,I)+DB(I,J)
         DB(J,J)=DA(J-1,I)*DC(J,I)
  20   CONTINUE
       CDY(I,I)=CDX(I,I)+DCMPLX(DX(I,1))
  10  CONTINUE
      RN=DA(1,1)+DB(1,NN)
      RX=MIN1(ABS(RN)*2.0,45.0)
      DO 30 I1=2,RX
       DO 40 I2=2,RX
         DC(I1,I2)=DB(I1,I2)-DA(I1,I2+1)
  40   CONTINUE
       DX(I1,1)=DY(I1,1)+DZ(1,I1)
       DO 45 I2=2,RX
         DB(I1+1,I2-1)=DC(I1,I2-1)*DX(I1,2)
  45   CONTINUE
       DO 50 I2=2,RX
         DY(I1+1,I2-1)=DX(I1+1,I2-1)+DZ(I1,2)
  50   CONTINUE
  30  CONTINUE
      NX=NN-5
      DO 60 J1=2,NX
       DO 60 J2=2,NX
         CD1(J1,J2)=DCMPLX(DX(J1,J2),DZ(J1,J2))
         CD2(J1,J2)=CD1(J1,J2-1)-CD2(J1,J2)
  60  CONTINUE
      NX=NN/2+5
      DO 70 J1=2,NX,2
       DX(J1,1)=DZ(J1,1)
       DO 80 J2=2,NX
         CDX(J1-1,J2)=CD2(J1,J2)-DX(J1,J2)
         CDX(J1,J2)=CD1(J1,J2)-DY(J1,J2)
  80   CONTINUE
       DY(J1,1)=DY(J1,1)-DZ(J1,NX+1)
  70  CONTINUE
      WRITE(6,*) ' ***PROGRAM ***'
      WRITE(6,*) ' DA=',((DA(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DB=',((DB(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DC=',((DC(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DX=',((DX(I,J),I=11,30),J=1,20)
      WRITE(6,*) ' CD1=',((CD1(I,J),I=11,30),J=1,20)
      WRITE(6,*) ' CD2=',((CD2(I,J),I=1,20),J=1,20)
      STOP
      END
      BLOCK DATA INIT
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK1/ DA(50,50),DB(50,50),DC(50,50)
      COMMON /BLK2/ DX(50,50),DY(50,50),DZ(50,50)
      COMMON /BLK3/ CD1(50,50),CD2(50,50)
      DATA DX,DY,DZ/2500*1.D0,2500*2.D0,2500*3.D0/
      DATA CD1/2500*(-1.D0,2.D0)/
      DATA CD2/2500*(2.D0,-3.D0)/
      END
