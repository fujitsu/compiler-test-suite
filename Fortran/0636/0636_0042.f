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
       DO 20 J=2,NX
        N1=0
        N2=0
        DO 30 I=2,NX
          DB(I,J)=DA(I,J)-DD(I,K)
          IF (DA(I,J).GT.DB(I,J)) THEN
            N1=N1+1
            DA(I,J)=DB(I,J)+DC(N1,J)
            DC(N1,J+1)=DA(I-1,J+1)+DF(I,J+1)
          ENDIF
 30     CONTINUE
        DO 40 I=2,NX
          IF (DB(I,J).GT.DA(I,J)) THEN
            N2=N2+1
            DD(N2,K+1)=DE(K,N2+1)-DA(I,I)
            DC(N2,J-1)=DB(I-1,J+1)-DF(I,I)
          ENDIF
 40     CONTINUE
 20    CONTINUE
 10   CONTINUE
      DO 50 I=2,NX
       N1=0
       N2=NN
       DO 60 J=1,NX
         IF (DD(I,J).GT.DC(I,J)) THEN
           N1=N1+1
           N2=N2-1
           CD1(N1,I)=DCMPLX(DA(I,J),DB(I,J))
           CD2(N2,I)=DCMPLX(DD(I,J),DB(I,J))
           CDX(N1,N2)=CD2(J,I+1)-CD1(N1,I-1)
           CDY(J,N2)=DCMPLX(DC(I,J),DF(I,J))
         ENDIF
 60   CONTINUE
 50   CONTINUE
      RETURN
      END
