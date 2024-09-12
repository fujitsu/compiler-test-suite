      PROGRAM MAIN
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK1/ DA(50,50),DB(50,50),DC(50,50)
      COMMON /BLK2/ DX(50,50),DY(50,50),DZ(50,50)
      COMMON /BLK3/ CD1(50,50),CD2(50,50)
      DIMENSION  CDX(50,50),CDY(50,50)
      DATA CDX,CDY/2500*(1.D0,2.D0),2500*(2.D0,3.D0)/
      DATA  NN/50/
      DO 5 I=1,NN
       DO 5 J=1,NN
        DA(I,J)=DFLOAT(I)
        DB(I,J)=DFLOAT(J)
        DC(I,J)=DB(I,J)-DB(I,J)
  5   CONTINUE
      DO 10 I=1,NN/2
       DO 10 K=2,NN/2
        DO 20 J=2,NN
          DA(I,J)=DA(I,J)+DB(I,K)*DC(K,J)
  20    CONTINUE
        DO 30 J=2,NN
          DZ(J,I)=DX(J,I)+DY(J,K)
          CD2(J,I)=CDX(J,K)-CDY(I,J)
  30    CONTINUE
        CD1(I,K)=DCMPLX(DA(I,K),DZ(I,K))
  10  CONTINUE
      CALL SUB(CDX,CDY,NN)
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
      SUBROUTINE SUB(CDX,CDY,NN)
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK1/ DA(50,50),DB(50,50),DC(50,50)
      COMMON /BLK2/ DX(50,50),DY(50,50),DZ(50,50)
      COMMON /BLK3/ CD1(50,50),CD2(50,50)
      DIMENSION  CDX(NN,NN),CDY(NN,NN)
      NX=NN-2
      DX1=DA(1,1)
      DY1=0.D0
      DO 10 I=2,NX
       DO 20 J=2,NX
         DB(J,I)=DX1+DB(J,I+1)
         DX1=DX1+DA(J,I)
         DC(J,I)=DX1+DX(J,I+1)*DY(J+1,I)
         DZ(I,I)=DZ(I,I)+DC(J,I)-DY(I,J)
         CDX(J,I)=CDX(J,I)+CDY(J,I)
  20   CONTINUE
       DO 10 K=2,NX
         DY(K,I)=DZ(K-1,I+1)+DZ(K+1,I-1)
         CDY(J,I)=DCMPLX(DY(K,I),DA(K,I))
         DY1=DY1+DREAL(CDX(J-1,I))
         DA(K,I)=DA(K-1,I)+DIMAG(CDY(J,I))-DREAL(CDY(J-1,I))
         DB(I,K+1)=DB(K,I)-DA(K-1,I-1)
  10  CONTINUE
      CD2(1,1)=DCMPLX(DY1,DX1)
      DO 50 I=2,NX-5
       DO 60 J=2,NX-5
         DA(J,I)=DA(J-1,I)+DB(J,I)
         DC(J,I)=DA(J,I)+DC(J,I)-DZ(J,I)
         CD2(I,NX)=CD2(I,NX)+CDX(I,J)
  60   CONTINUE
       DO 50 J=2,NX-5
         DZ(J-1,I)=DX(J,I)-DY(J,I)
         CDY(I,J)=CDY(I-1,J+1)+CD1(I,J)
  50  CONTINUE
      RETURN
      END
