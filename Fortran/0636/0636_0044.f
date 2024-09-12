      PROGRAM MAIN
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      DIMENSION  DA(50,50),DB(50,50),DC(50,50)
      DIMENSION  DD(50,50),DE(50,50),DF(50,50)
      DIMENSION  CD1(50,50),CD2(50,50)
      DIMENSION  CDX(50,50),CDY(50,50)
      DATA DE,DF,DD/2500*1.D0,2500*2.D0,2500*3.D0/
      DATA CD1/2500*(-1.D0,2.D0)/
      DATA CD2/2500*(2.D0,-3.D0)/
      DATA CDX,CDY/2500*(1.D0,2.D0),2500*(2.D0,3.D0)/
      DATA  NN/50/
      DO 5 I=1,NN
       DO 5 J=1,NN
        DA(I,J)=DFLOAT(I)
        DB(I,J)=DFLOAT(J)
        DC(I,J)=DB(I,J)-DB(I,J)
  5   CONTINUE
      CALL SUB(DA,DB,DC,DD,DE,DF,CD1,CD2,CDX,CDY,NN)
      WRITE(6,*) ' ***PROGRAM ***'
      WRITE(6,*) ' DA=',((DA(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DB=',((DB(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DC=',((DC(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DD=',((DD(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DE=',((DE(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DF=',((DF(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' CD1=',((CD1(I,J),I=11,30),J=1,20)
      WRITE(6,*) ' CD2=',((CD2(I,J),I=1,20),J=1,20)
      STOP
      END
      SUBROUTINE SUB(DA,DB,DC,DD,DE,DF,CD1,CD2,CDX,CDY,NN)
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      DIMENSION  DA(NN,NN),DB(NN,NN),DC(NN,NN)
      DIMENSION  DD(NN,NN),DE(NN,NN),DF(NN,NN)
      DIMENSION  CD1(NN,NN),CD2(NN,NN)
      DIMENSION  CDX(NN,NN),CDY(NN,NN)
      NX=NN-2
      DO 10 I=2,NX
       DO 20 J=2,NX
         DA(J,3)=DB(I,I)+DC(J,3)
         DC(2,J)=DA(2,J)*DB(I,J)
         DD(J,I)=DE(J+1,I-1)+DF(J-1,I+1)
         CD1(I,I)=CD1(I,I)+CD2(I,J)*CDX(I,J)
 20    CONTINUE
       DO 30 K=2,NX
         DE(K,I)=DD(K,I)-DREAL(CD1(I-1,K))
         CDY(K,NX)=CDY(NX,K)+CD2(K,I)
         DB(I,J)=DB(I,J-1)+DA(2,J)
 30    CONTINUE
 10   CONTINUE
      DO 40 K=2,NX/2
       DO 50 J=2,NX
        DO 50 I=2,NX
          DB(J,K)=DB(J,K)+DC(I,J)
          DF(I,K)=DF(K,I)-DA(I,J)
          CD2(I,2)=CD2(3,I)+CDY(I,J)
  50   CONTINUE
       DO 60 J=2,NX/2
        DO 60 I=2,NX/2
         I1=I*2-1
         I2=I*2+1
         DE(I1,K)=DE(K,I1)-DB(I,J)
         CDX(J,K)=CDX(J,K)+CD1(I2,J)
         DC(I1,I2)=DC(I2,I1)-DIMAG(CDX(J+1,K-1))
  60   CONTINUE
  40  CONTINUE
      RETURN
      END
