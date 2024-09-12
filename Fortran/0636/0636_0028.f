      PROGRAM MAIN
      IMPLICIT REAL*8(A-D),LOGICAL*4(L)
      DIMENSION  DA10(20,20,20),DA20(20,20,20),DA30(20,20,20),
     *           DA40(20,20,20),LD10(20,20,20),LD20(20,20,20)
      DATA     DA10/8000*1.0D0/,DA20/8000*2.0D0/
      DATA     DA30/8000*3.0D0/,DA40/8000*4.0D0/
      DATA     LD10/8000*.FALSE./,LD20/8000*.FALSE./
      DATA     NN/20/
      CALL  SUB1(DA10,DA20,DA30,DA40,LD10,LD20,NN)
      CALL  SUB2(DA10,DA20,DA30,DA40,LD10,LD20,NN)
      WRITE(6,*) 'DA10=',DA10
      WRITE(6,*) 'DA20=',DA20
      WRITE(6,*) 'DA30=',DA30
      WRITE(6,*) 'DA40=',DA40
      WRITE(6,*) 'LD10=',LD10
      WRITE(6,*) 'LD20=',LD20
      STOP
      END
      SUBROUTINE SUB1(DA10,DA20,DA30,DA40,LD10,LD20,NN)
      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
      DIMENSION  DA10(NN,NN,NN),DA20(NN,NN,NN),DA30(NN,NN,NN),
     *           DA40(NN,NN,NN),LD10(NN,NN,NN),LD20(NN,NN,NN)
      NX=NN-1
      DO 10 I=1,NX
       DO 20 J=1,NN
        DO 20 K=1,NN
         DA10(I,J,K) = DA10(I,J,K)+DFLOAT(I)
         DA20(I,J,K) = DA30(I,J,K)+DA40(I,J,K)
         IF ( DA10(I,J,K).GT.DA20(I,J,K) ) LD10(I,J,K)=.TRUE.
         LD20(I,J,K)=.NOT.LD20(I,J,K) .AND. LD10(I,J,K)
  20   CONTINUE
       DO 30 K=1,NN
        DO 30 J=1,NN
         DA30(I,J,K)=DA10(I,J,K)+DA20(I,J,K)
         DA40(I,J,K) = DMIN1(DA40(I,J,K),DA20(I,J,K))
         IF ( LD10(I,J,K) .AND. LD20(I,J,K) ) THEN
          DA10(I,J,K)=0.D0
         ENDIF
  30   CONTINUE
  10  CONTINUE
      DO 40 I1=2,NX,2
       DA10(I1,NX,NX)=1.D0
       DO 50 I2=2,NX,2
        DA20(I1,I2,NX)=DFLOAT(I1+I2)
        DO 50 I3=2,NX
         DA30(I1,I2,I3)=DA10(I1,I2,I3)*2.D0-DA40(I1,I2,I3+1)
         DA40(I1,I2,I3)=DA20(I1,I2+1,I3)-DA30(I1-1,I2,I3+1)
  50   CONTINUE
       LD20(I1,3,2)=.TRUE.
       DA30(I1,2,3)=DA10(I1+1,2,2)-DA20(I1,3,2)
  40  CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(DA10,DA20,DA30,DA40,LD10,LD20,NN)
      IMPLICIT  REAL*8(A-D),LOGICAL*4(L)
      DIMENSION  DA10(NN,NN,NN),DA20(NN,NN,NN),DA30(NN,NN,NN),
     *           DA40(NN,NN,NN),LD10(NN,NN,NN),LD20(NN,NN,NN)
      DIMENSION  DW10(2500),DW20(2500)
      DATA   DW10,DW20/2500*1.D0,2500*2.D0/
      NX=NN-1
      DO 10 I1=2,NX
       DX=DMAX1(DA40(I1,NX,NX),DFLOAT(I1))
       DO 10 I2=2,NX
        DO 10 I3=2,NX
         DA10(I1,I2,I3)=DA20(I1-1,I2,I3)-DA30(I1,I2+1,I3)
         DA20(I1,I2,I3)=DA30(I1,I2+1,I3)-DA40(I1-1,I2,I3)
         DA30(I1,I2,I3)=DX-DMIN1(DA10(I1,I2,I3),DA20(I1,I2,I3))
  10  CONTINUE
      DO 20 I1=1,NX
       DO 30 I2=1,NX
        DO 30 I3=1,NX
         II=I3*2-1
         DW10(II)=DA10(I1,I2+1,I3)-DA20(I1+1,I2,I3)
         DW20(II)=DA30(I1,I2+1,I3)-DA40(I1+1,I2,I3)
         IF ( LD10(I1,I2,I3) ) THEN
          DA20(I1,I2,I3)=DA30(I1,I2,I3)/(DW10(II)+1.D0)
          DA30(I1,I2,I3)=DA40(I1,I2,I3)*DW20(II)/(DA10(I1,I2,I3)+1.D0)
         ENDIF
  30   CONTINUE
       DO 40 I3=1,NX
        DO 40 I2=1,NX
         II=I2*2
         DA10(I1,I2,I3)=DA20(I1,I2,I3)-DW10(II)
         DA40(I1,I2,I3)=DA30(NX,I2,I3)-DW20(II)
         IF ( DA10(I1,I2,I3).GT.DA20(I1,I2,I3) ) THEN
           LD10(I1,I2,I3)=.NOT.LD10(I1,I2,I3).AND.LD20(I1,I2,I3)
         ENDIF
  40   CONTINUE
  20  CONTINUE
      RETURN
      END