      PROGRAM MAIN
      IMPLICIT REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)
      DIMENSION  DA10(20,20,20),DA20(20,20,20),DA30(20,20,20),
     *           DA40(20,20,20),LD10(20,20,20),LD20(20,20,20)
      COMMON /BLK/ CD10(20,20,20),CD20(20,20,20)

      DATA     DA10/8000*1.0D0/,DA20/8000*2.0D0/
      DATA     DA30/8000*3.0D0/,DA40/8000*4.0D0/
      DATA     LD10/8000*.FALSE./,LD20/8000*.FALSE./
      DATA     NN/20/

      DO 10 I=1,NN
       DX=DFLOAT(I)
       DO 10 J=1,NN
        DY=DFLOAT(J)
        DO 10 K=1,NN
         DZ=DFLOAT(K)
         CD10(I,J,K)=DCMPLX(DX,DY)
         CD20(I,J,K)=DCMPLX(DY,DZ)
  10   CONTINUE

      CALL  SUB1(DA10,DA20,DA30,DA40,LD10,LD20,NN)

      CALL  SUB2(DA10,DA20,DA30,DA40,LD10,LD20,NN)
      WRITE(6,99) 'DA10=',DA10
      WRITE(6,99) 'DA20=',DA20
      WRITE(6,99) 'DA30=',DA30
      WRITE(6,99) 'DA40=',DA40
      WRITE(6,*) 'LD10=',LD10
      WRITE(6,*) 'LD20=',LD20
 99   FORMAT(A,(8F10.5))
      STOP
      END

      SUBROUTINE SUB1(DA10,DA20,DA30,DA40,LD10,LD20,NN)
      IMPLICIT  REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)
      DIMENSION  DA10(NN,NN,NN),DA20(NN,NN,NN),DA30(NN,NN,NN),
     *           DA40(NN,NN,NN),LD10(NN,NN,NN),LD20(NN,NN,NN)
      COMMON /BLK/ CD10(20,20,20),CD20(20,20,20)
      IN=1
      NX=NN-1
      DO 10 I=1,NX
       DO 20 J=1,NX
        DO 30 K=2,NX
         DX = DA10(I,J,K)/2.D0+DA20(I,J,K)
         DY = DA30(I,J,K)/3.D0-DA40(I,J,K)
         IF ( DX .GT. DY ) LD10(I,J,K)=.TRUE.
         LD20(I,J,K)=.NOT.LD20(I,J,K) .AND. LD10(I,J,K)
         CD10(I,J,K) = DCMPLX(DX,DY)-CD20(I,J,K)
  30   CONTINUE

        DO 40 K=2,NX
         DA30(I,J,K)=DA10(I,J,K)*DA20(I,J,K)/DA30(I,J,K)-
     *    DREAL(CD10(I,J,K-1))/DIMAG(CD20(I,J,K+1))
         IF ( LD10(I,J,K) .AND. LD20(I,J,K) ) THEN
          DA10(I,J,K)=0.D0
         ELSE
          CD20(I,J,K)=DCMPLX(DA30(I,J,K),1.D0)
         ENDIF
  40    CONTINUE
  20   CONTINUE
  10  CONTINUE

      DO 60 I1=2,NX,IN
       DO 50 I2=2,NX,IN
        DA20(I1,I2,NX)=DFLOAT(I1+I2)
        DO 50 I3=2,NX,IN
         DA30(I1,I2,I3)=DA10(I1,I2,I3)*2.D0-DA40(I1,I2,I3+1)
         DA40(I1,I2,I3)=DA20(I1,I2+1,I3)-DA30(I1-1,I2,I3+1)
         LD20(I1,I2,I3)=.NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
         IF ( LD20(I1,I2,I3) ) THEN
           DA30(I1,I2,I2)=DMIN1(DA30(I1,I2,I2),DA40(I1,I2,I3))
           CD20(I1,I2,1)=CD20(I1,I2,1)-CD10(I1,I2,I3)
         ENDIF
  50   CONTINUE
  60  CONTINUE

      RETURN
      END

      SUBROUTINE SUB2(DA10,DA20,DA30,DA40,LD10,LD20,NN)
      IMPLICIT  REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)
      DIMENSION  DA10(NN,NN,NN),DA20(NN,NN,NN),DA30(NN,NN,NN),
     *           DA40(NN,NN,NN),LD10(NN,NN,NN),LD20(NN,NN,NN)
      COMMON /BLK/ CD10(20,20,20),CD20(20,20,20)

      NX=NN-1
      DO 10 I1=2,NX
       DX=DMAX1(DA40(I1,NX,NX),DFLOAT(I1))
       DY=DMAX1(DA40(I1,NX,NX),DFLOAT(I1))
       DO 10 I2=2,NX
        DO 10 I3=2,NX
         DA10(I1,I2,I3)=DA20(I1-1,I2,I3)-DA30(I1,I2+1,I3)
         DA20(I1,I2,I3)=DA30(I1,I2+1,I3)-DA40(I1-1,I2,I3)
         CD20(I1,I2,I3)=DCMPLX(DX,DY)-CD20(I1,I2,I3)
  10  CONTINUE

      NY=NX-2
      NZ=NX/2
      DO 20 I1=1,NZ
       DO 20 I2=1,NY
        DO 30 I3=1,NZ
         II=I1*2-1
         IF ( LD10(I1,I2,I3) ) THEN
          DA20(I1,I2,I3)=DA30(I1,I2,I3)/2.D0
     1        /(DIMAG(CD20(I1,I2,I3))+3.D0)
          DA30(I1,I2,I3)=DA40(I1,I2,I3)/(DA10(II,I2,I3)+1.D0)
          GOTO 30
         ENDIF
         DA40(I1,I2,I3)=DIMAG(CD10(I1,I2,I3))-DREAL(CD20(I1,I2,I3))
         LD20(I1,I2,I3)=.NOT.LD20(I1,I2,I3)
  30    CONTINUE
        DO 40 I3=1,NZ
         II=I1*2
         DA10(II,I2,I3)=DA20(I1,I2,I3)-DA40(I1+1,I2+2,I3+3)
         CD20(I1,I2+1,I3+3)=DCMPLX(DA30(NX,I2,I3))+CD10(I1,I2,I3)
         IF ( DA10(I1,I2,I3).GT.DA20(I1,I2,I3) ) THEN
           LD10(I1,I2,I3)=.NOT.LD10(I1,I2,I3).AND.LD20(I1,I2,I3)
         ENDIF
  40   CONTINUE
  20  CONTINUE

      RETURN
      END
