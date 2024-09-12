      PROGRAM MAIN
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C),REAL*8(Q)
      COMMON /BLK1/ DA(50,50),DB(50,50),DC(50,50)
      COMMON /BLK2/ DX(50,50),DY(50,50),DZ(50,50)
      COMMON /BLK3/ CD1(50,50),CD2(50,50),QD1(50,50),QD2(50,50)
      DATA  NN/50/
      DO 5 I=1,NN
       DO 5 J=1,NN
        DA(I,J)=DFLOAT(I)
        DB(I,J)=DFLOAT(J)
        DC(I,J)=DB(I,J)-DB(I,J)
  5   CONTINUE
      CALL SUB(NN)
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
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C),REAL*8(Q)
      COMMON /BLK1/ DA(50,50),DB(50,50),DC(50,50)
      COMMON /BLK2/ DX(50,50),DY(50,50),DZ(50,50)
      COMMON /BLK3/ CD1(50,50),CD2(50,50),QD1(50,50),QD2(50,50)
      DATA DX,DY,DZ/2500*1.D0,2500*2.D0,2500*3.D0/
      DATA CD1/2500*(-1.D0,2.D0)/
      DATA CD2/2500*(2.D0,-3.D0)/
      DATA QD1,QD2/2500*1.1d0,2500*2.1d0/
      END
      SUBROUTINE SUB(NN)
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C),REAL*8(Q)
      COMMON /BLK1/ DA(50,50),DB(50,50),DC(50,50)
      COMMON /BLK2/ DX(50,50),DY(50,50),DZ(50,50)
      COMMON /BLK3/ CD1(50,50),CD2(50,50),QD1(50,50),QD2(50,50)
      NX=NN-2
      DO 10 I1=2,NX
       IL1=NX-I1+1
       IL2=I1+1
       QD1(IL1,I1)=QD1(IL1,I1)+QD2(IL2,I1)
       DO 20 I2=2,NX
         DA(I2,IL1)=DX(I2,IL2+1)+DC(I1,I2)
         DX(I2,IL1)=DA(I2,IL1+1)+DZ(I1,I2)
 20    CONTINUE
 10   CONTINUE
      DO 30 J=2,NX
       DO 30 I=2,NX
         DX1=DIMAG(CD1(I,J))+DREAL(CD2(I,J))
         DY(I,J)=DY(I-1,J)*2.D0-DX1
         DZ(I,J)=DX1-DY(I-1,J-1)*DB(I,J)
         IF (DZ(I,J).LT.DC(J,J)) THEN
           DC(J+1,I)=DA(I,J)-DZ(I,J)
         ENDIF
         CD1(I-1,J-1)=DCMPLX(DX1,DC(I,J))
 30   CONTINUE
      DO 40 I=2,NX
       DO 40 J=2,NX
         QX=DBLE(DX(I,J)+DY(I,J)*2.D0)
         QY=DBLE(DA(I,J)+DB(I,J)*2.D0)
         QD1(I,J)=QD2(I,J)+(QX-QY)
         DB(I-1,J)=DSQRT(DA(I,J))-DB(I,J)
         DZ(I,J)=DY(I,J)-DSIN(DZ(I-1,J))
 40   CONTINUE
      RETURN
      END
