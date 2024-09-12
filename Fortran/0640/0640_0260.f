      PROGRAM MAIN
      IMPLICIT  REAL*8(A-B,D,O-Z),LOGICAL*4(L),COMPLEX*16(C)
      DIMENSION   DA10(20,20),DA20(20,20),DA30(20,20),
     *          DB10(20,20,20),DB20(20,20,20),DB30(20,20,20)
      DIMENSION   CD10(20,20),CD20(20,20),CD30(20,20)
      PARAMETER  (JC1=1,JC2=2,JC3=3,JC4=10,JC5=20)

      DATA     DA10/400*1.0D0/,DA20/400*2.D0/,DA30/400*3.D0/
      DATA     DB10/8000*4.D0/,DB20/8000*5.D0/,DB30/8000*3.D0/
      DATA     CD10,CD20/400*(-1.D0,2.D0),400*(3.D0,-2.D0)/
      DATA     N1/1/,N2/2/,N3/10/,N4/15/
      EQUIVALENCE (CD30(1,1),DB30(1,1,1))
      DO 10 K=1,N3-1
       DO 10 I=1,JC5
        DO 10 J=JC1,20
         DA10(I,J) = DA10(I,J)+DA30(I,J)/DB30(I,J,K)
         DA20(I,J) = DA20(I,J)+DA10(I,J)
         DA30(I,J) = DA30(I,J)-DA20(I,J)
  10  CONTINUE

      DO 20 I=N4+JC2,N2,-JC1
       DO 20 J=N3+JC3,2,-N1
        DO 20 K=JC4,N4
         DB10(I,J,K) = DB20(I+JC1,J*JC1-1,K-1)+DB30(I,J,K-N2+1)
         DB20(I,J,K) = DB10(N2-1,J-1,K) - DB30(N2-1,J-N1,K)
         DB30(I,J,K) = DB20(I,J,K-1) - DB10(I,J+N2,K-1)
  20  CONTINUE

      DO 30 I=JC1,JC5
       DO 30 J=JC1,JC5
        DO 30 K=JC3,N4
         DX = DB30(I,J,K) - DIMAG(CD20(I,J))
         DY = DMIN1(DB30(I,J,K),DB10(I,J,K+JC2))+DIMAG(CD10(I,J))
         IF ( DX .GT. DY ) THEN
           DZ = DX-DA10(I,J)
           DB20(I,J,K) = DY
         ELSE IF ( DX .GT. DIMAG(CD20(I,J)) ) THEN
           DZ = DY*DREAL(CD20(I,J))
           DB10(I,J,K+N1) = DX
         ELSE
           DZ = 1.D0
         ENDIF
         CD10(I,J) = DCMPLX(DX,DZ)
         CD20(I,J) = DCMPLX(DZ,DY)
  30  CONTINUE
      WRITE(6,99999) ' (DA10) ',((DA10(K1,K2),K1=1,10),K2=1,10)
      WRITE(6,99999) ' (DA20) ',((DA20(K1,K2),K1=1,10),K2=1,10)
      WRITE(6,99999) ' (DA30) ',((DA30(K1,K2),K1=1,10),K2=1,10)
      WRITE(6,99999) ' (CD10) ',((CD10(K1,K2),K1=1,10),K2=1,10)
      WRITE(6,99999) ' (CD20) ',((CD20(K1,K2),K1=1,10),K2=1,10)
      WRITE(6,99999) ' (DB10) ',(((DB10(K1,K2,K3),K1=1,10),K2=1,10)
     1                         ,K3=1,5)
      WRITE(6,99999) ' (DB20) ',(((DB20(K1,K2,K3),K1=1,10),K2=1,10)
     1                         ,K3=1,5)
      WRITE(6,99999) ' (DB30) ',(((DB30(K1,K2,K3),K1=1,10),K2=1,10)
     1                         ,K3=1,5)
99999 format(a,(g20.6))
      STOP
      END
