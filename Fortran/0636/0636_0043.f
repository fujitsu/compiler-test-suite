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
      DO 10 K=2,NX
       DO 20 I=2,NX
         DE(I,K)=DD(I,K)+DF(I,K)
         CD1(I,K)=CD2(I,K)*CD1(I,K)
 20    CONTINUE
       DO 30 I=2,NX
         DA(I+1,K)=DA(I+1,K)+DB(I,K)
         DB(I+1,K)=DB(I+1,K)*DC(I,K)
         DO 30 J=2,NX
            DA(I,J)=DB(I,J)+DC(I,J)
            CDX(I,J)=CDY(I,K)-CDX(I,J+1)
 30    CONTINUE
       DO 40 I=2,NX
         CDY(I,K+1)=CDY(I,K)+CD1(I,K)
        DO 40 J=2,NX
          DD(I,K+1)=DE(I,J+1)-DA(I,J)
          DC(I,J-1)=DB(I-1,J+1)-DF(I,J)
 40     CONTINUE
 10   CONTINUE
      DO 80 K=2,NX/2
       DO 50 I=2,NX
         DB(I,1)=DB(I,NX)+DF(I,1)
         N2=NN
 50    CONTINUE
       DO 60 J=2,NX
         DF(J,1)=DE(J,K+1)-DREAL(CDY(J,K))
         CD2(J,K)=CD2(J,K)+CD1(J,K)
         DO 70 I=2,NX
           CD1(J,I)=DCMPLX(DA(J,I),DB(J,I))
           CD2(J,I)=DCMPLX(DD(J,I),DB(J,I))
 70      CONTINUE
         DE(J,K)=DA(J,K+1)-DB(J,K)
         DD(J,K)=DB(J,K)+DF(J,K)
 60    CONTINUE
 80   CONTINUE
      RETURN
      END
