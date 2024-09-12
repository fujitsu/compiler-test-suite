      PROGRAM MAIN
      IMPLICIT REAL*8(A-B,D-H,O-Z),COMPLEX*16(C)
      PARAMETER  (NX=50,NY=20)
      DIMENSION  DA(NX,NX),DB(NX,NX),DC(NX,NX),DD(NX,NX)
      DIMENSION  C1(NX,NX),C2(NX,NX)
      DATA    NN/NY/
      DO 10 J=1,NX
       DO 10 I=1,NX
         DA(I,J)=1.D0
         DB(I,J)=2.D0
         DC(I,J)=3.D0
         DD(I,J)=4.D0
         C1(I,J)=(1.D0,2.D0)
         C2(I,J)=(3.D0,1.D0)
  10  CONTINUE
      DX=1.D0
      DO 20 K=2,NN
       DA(K,K)=DFLOAT(K)
       DO 30 J=2,NN/2
        DB(K,J)=DFLOAT(J)
        INV=J-1
        DX=2.D0
        DO 40 I=2,K
          INV=INV+1
          DIF=DA(INV,J)-DX
          IF (DIF.LE.0) THEN
            DX=DA(INV,J)
            IND=INV
          ENDIF
  40    CONTINUE
        DC(J,K)=DX
        DB(K,J)=DB(J,J)+DD(J,K)
  30   CONTINUE
       DD(I,J)=DX-DA(I,J)
  20  CONTINUE
      DO 100 K=2,NN
       INV1=1
       DO 110 J=K,NX
        DSUM=0.D0
        INV1=INV1+1
        INV2=1
        DO 120 I=NY,J
          DX=1.D0-DA(I,J)+DB(K,I)
          DY=DFLOAT(I)
          DZ=DFLOAT(J)
          DX=DX+DC(I,J)
          DD(INV2,J)=DX
          C1(INV2,K)=C2(INV1,INV2)+(1.D0,2.D0)
          INV2=INV2+1
          C2(INV2,INV1)=DCMPLX(DY,DZ)
          DX=DX-DC(I,J)
          DSUM=DSUM+DX-DA(I,K)
          DSUM=DSUM+DB(INV2,K)
          DC(I,J)=-DX
 120    CONTINUE
        DA(J,K)=DA(K,J)-DSUM
 110   CONTINUE
 100  CONTINUE
      DO 200 K=NY*2,NX
       DS1=0.D0
       DO 210 J=K,NX
        DS2=0.D0
        INV1=NX
        DO 220 I=2,J
         INV2=I-1
         DX=DABS(DA(I,K)-DA(K,I))
         DY=DABS(DC(K,I)-DC(I,J))
         DB(I,J)=DB(I,J)-DD(I,J)
         DX=DREAL(C1(I,J))+DIMAG(C2(INV1,K))+DX
         CDX=C1(INV1,J)*C2(J,INV2)
         DY=DY+DIMAG(C1(INV2,J))
         C1(INV1,J)=DCMPLX(DX,DY)
         C2(INV1,J-1)=CDX
         INV1=INV1-1
 220    CONTINUE
        DS2=DS2+DC(K,J)
 210   CONTINUE
       DS1=DMAX1(DS1,DD(K,K))
 200  CONTINUE
      WRITE(6,*) ' DS1= ',DS1
      WRITE(6,*) ' DS2= ',DS2
      WRITE(6,*) ' DA= ',((DA(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DB= ',((DB(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DC= ',((DC(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' DD= ',((DD(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' C1= ',((C1(I,J),I=1,20),J=1,20)
      WRITE(6,*) ' C2= ',((C2(I,J),I=1,20),J=1,20)
      STOP
      END
