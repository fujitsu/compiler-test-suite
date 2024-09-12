      PROGRAM MAIN
      IMPLICIT  REAL*8(A-B,D,O-Z),COMPLEX*16(C)
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),
     *            DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
      DIMENSION   CD10(20,20),CD20(20,20),CD30(20,20)
      PARAMETER  (JC5=20)

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/
      DATA     CD10,CD20/400*(-1.D0,2.D0),400*(3.D0,-2.D0)/
      DATA     CD30/400*(2.D0,0.1D0)/
      DATA     NN/14/
      DO 10 I1=1,NN
        DA10(I1,I1) = DFLOAT(I1)
        DO 20 I2=1,NN
         N2=I2+1
         DA20(N2,I1) = DA30(I1,I2+1)-DA10(I1,1)
         DO 30 I3=N2,NN
           DX = DIMAG(CD10(I1,I3))+DREAL(CD20(I2,I3))
           DY = DREAL(CD10(I1,I3))-DIMAG(CD30(I2,I3))
           CD10(I1,I3) = DCMPLX(DX,DY)
           DO 40 I4=2,NN
             DB10(I4,I3,I1) = DX-DB20(I4,I2,I1)*DB30(I4,I3,I2)
             DB20(I4,I3,I1) = DY+DB10(I4,I2,I1)*DB30(I4,I3,I2)
  40       CONTINUE
           DZ = DREAL(CD10(I1,I2))+DIMAG(CD10(I1,I2))
           DZ = DABS(DZ)
           DB30(2,I3,I2) = DSQRT(DZ)
  30     CONTINUE
         DA30(I1,I2) = DA10(I1,I1+1) - DA20(1,I2)
  20    CONTINUE
  10  CONTINUE
      WRITE(6,9999) ' (DA10) ',(DA10(I,I),I=1,10)
      WRITE(6,9999) ' (DA20) ',((DA20(I,J),I=1,10),J=1,10)
      WRITE(6,9999) ' (DA30) ',((DA30(I,J),I=1,10),J=1,10)
      WRITE(6,9999) ' (CD10) ',((CD10(I,J),I=1,10),J=1,10)
      WRITE(6,9999) ' (DB10) ',(((DB10(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,9999) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,9999) ' (DB30) ',((DB30(2,J,K),J=1,10),K=1,10)
      N1 = NN/2
      DO 50 J1=2,N1
        CD20(N1,J1) = CD10(N1,J1)
        N2=J1+1
        DO 60 J2=2,NN
          DX = DA10(J2,N2) - DA20(J1,J2)
          DY = DA10(J2,N2) + DA30(N1,J2)
          CD30(N2,J2) = DCMPLX(DX,DY)
          N3 = J2-1
          DO 70 J3=2,NN
            DB30(J1,J2,J3) = DB20(J1,N3,J3) - DB10(J1,J2,J3)
            DB20(J1,J2,J3) = DB30(J1,N3,J3) + DB10(J3,J2,J1)
            DA10(J3,J1) = DIMAG(CD30(J1,J3))-DREAL(CD20(1,J3))
  70      CONTINUE
          IF ( DA10(N3,N2).GT.5.D0 ) THEN
            CD10(J1,J1) = CD10(J1,J1) + CD30(J1,N3)
          ENDIF
  60    CONTINUE
  50  CONTINUE
      WRITE(6,9999) ' (CD10) ',(CD10(I,I),I=1,20)
      WRITE(6,9999) ' (CD20) ',(CD20(N1,J),I=1,20)
      WRITE(6,9999) ' (CD30) ',((CD30(I,J),I=1,10),J=1,10)
      WRITE(6,9999) ' (DB20) ',(((DB20(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,9999) ' (DB30) ',(((DB30(I,J,K),I=1,10),J=1,10),K=1,10)
9999  format(a,(g20.6))
      STOP
      END
