      IMPLICIT    REAL*8(D),COMPLEX*16(C)
      DIMENSION   DA10(100),DA20(100),DA30(100),DA40(100),
     *      DB10(100,100),DB20(100,100),DB30(100,100)
      DIMENSION   CD10(100),CD20(100),CD30(100)
      INTEGER*4   ID10(100),ID20(100),ID30(100)

      DATA   DA10/100*2.0D0/,DA20/100*2.0D0/,DA30/100*2.D0/
      DATA   DA40/100*1.D0/
      DATA   DB10/10000*1.D0/,DB20/10000*1.0D0/,DB30/10000*0.D0/
      DATA   CD10/100*(2.D0,2.D0)/,CD20/100*(4.D0,4.D0)/
      DATA   CD30/100*(1.D0,1.D0)/
      DATA   ID10/100*1/,ID20/100*2/,ID30/100*4/
      DATA   IT1/1/,IT2/2/,IT3/5/,IT4/10/,IT5/15/
      DATA   IM1/-1/,IM2/-2/,IM3/-5/

      DO 10 I=IT1,IT4*IT4/2
        ID10(I) = I
        ID20(I) = 101 - I
        ID30(I) = I + 1
        DO 10 J=I,50,IT2
          CDX = CD10(J) + CD20(J+IT1)
          CDY = CD10(J) + CD30(J*2)
          IF ( ID20(I) .GT. I ) THEN
            CDX = CDSQRT(CD10(J)) + CD30(J+IT4)
            DB10(J,I) = DB20(J,I+IT2) + 2.0D0 + DB30(IT4,J+I)
            DX = DNINT( DREAL(CDX) )
            DY = DNINT( DIMAG(CDX) )
            CDX = DCMPLX(DY,DX)
          ELSE
            CDY = CDSQRT(CD20(J) + CD30(J))
            DX = DNINT( DIMAG(CDY) )
            DY = DNINT( DREAL(CDY) )
            CDY = DCMPLX(DX,DY)
            DB20(I,J) = DB10(ID10(J),I-IM1) + DB30(I,J-IM1+IT4)
          ENDIF
          CD10(J) = CD10(J) + CDX + CDY
          DB30(J,I) = DB10(100,J) + DB20(J,100) - DX - DY
 10   CONTINUE
      WRITE(6,*) ((DB10(K1,K2),K1=1,50),K2=1,50)
      WRITE(6,*) ((DB20(K1,K2),K1=1,50),K2=1,50)
      WRITE(6,*) ((DB30(K1,K2),K1=1,50),K2=1,50)
      WRITE(6,*) (CD10(K1),K1=1,50)
      STOP
      END
