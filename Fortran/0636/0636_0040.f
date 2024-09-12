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
      IDX1=1
      IDX2=1
      NX=NN-2
      DO 10 K=1,NN/2
       DX=0.D0
       DXX=0.D0
       DO 20 J=2,NX
        DO 30 I=2,NX
          DB(I,J)=DA(I,J)*DD(I,J)
          IF (DXX.GT.DB(I,J)) THEN
            IDX1=I
            IDX2=J
            DXX =DB(I,J)
          ENDIF
          DE(I,J)=DE(I,K)+DF(I,J)
 30     CONTINUE
        DO 40 I=2,NX
          DD(I,J)=DE(K,J+1)-DA(I,I)
          DC(I,J)=DB(I-1,J+1)-DF(I,I)
          DX=DX+DA(I,J)*DC(I,J)-DB(I,J)
 40     CONTINUE
 20    CONTINUE
       DA(K,NX)=DX
       DA(K,2)=DXX
       CD1(IDX1,IDX2)=DCMPLX(DX,DXX)
 10   CONTINUE
      DO 50 I=1,NX
       DO 50 J=1,NX
         IF (DX.LT.DD(I,J)) THEN
           IDX1=I
           IDX2=J
           DX=DD(I,J)
         ENDIF
         DA(I,I)=DA(I,I)+DB(I,J)
         CD2(I,J)=CD1(I,J)+CD2(I,J)
         CDX(I,I)=CDX(I,I)+CDY(I,J)+CD2(I,J)
 50   CONTINUE
      DC(IDX1,IDX2)=DX
      RETURN
      END
