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
      LOGICAL*1  L10(50)
      INTEGER*2  H10(50),H20(50)
      DATA L10/50*.FALSE./
      DATA H10,H20/50*1,50*2/
      NX=NN-2
      DO 10 I=2,NX
       DO 20 J=2,NX
         DA(J,I)=DB(I+1,J)+DC(J-1,I)
         DC(J,I)=DA(J,I-1)*DB(I,J+1)
         IF (DA(J,I).GT.DC(J,I)) THEN
           L10(J)=.TRUE.
           H10(J)=J
         ELSE
           L10(I)=.TRUE.
           H20(J)=I
           DD(I,NX)=DD(I,NX)+DA(J,I)
         ENDIF
         CD1(J,I)=CD2(J,I+1)*CDX(J*1,I*1)-CDY(J+1,I)
         DE(J,I)=DMAX1(DA(J,I),DC(J,I))-DF(J,I)
 20    CONTINUE
       DO 30 K=2,NX
         DE(K,I)=DD(K,NX-1)-DREAL(CD1(I-1,K))
         CDY(K,2)=CDY(K,2)+CD2(K,I)
         DB(I,K)=DB(I,K+1)+DA(K,I)
         H10(K)=H10(K)+H20(K)
 30    CONTINUE
 10   CONTINUE
      NZ=NX/2
      DO 40 K=2,NZ
       DO 50 J=2,K
        II=J
        DO 50 I=2,NZ
          DB(II,J)=DB(J+1,K)+DC(I,J)
          DF(II-1,K)=DF(II,J)-DA(II,J)
          CD2(II,J)=CD2(II+1,J)+CDY(I,J)
          II=II+1
  50   CONTINUE
       I1=1
       DO 60 J=2,NZ
        I1=I1+1
        I2=J
        DO 60 I=2,NZ
          I2=I2+1
          DE(I,I1)=DA(K,I1)-DC(I1+1,J-1)
          CDX(I2,J)=CDX(I2+1,J)+CD1(I2,J)
          DC(I1,I2)=DE(I,I1-1)-DIMAG(CDX(J+1,K-1))
  60   CONTINUE
  40  CONTINUE
      RETURN
      END
