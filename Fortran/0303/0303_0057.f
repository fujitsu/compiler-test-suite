      PROGRAM MAIN
      REAL   *4  RA1(10),RA4(10)
      REAL   *8  DA3(10)
      COMPLEX*8  CA1(10)
      COMPLEX*16 CDA1(10)
      DO 10 I=1,10
       RA1(I)=FLOAT(I)
       CA1(I)=CMPLX(I,I)
 10    CDA1(I)=DCMPLX(I,-I)
      DO 30 I=1,10
       RA4(I)=CABS(CA1(I))+RA1(I)
       DA3(I)=CDABS(CDA1(I))
 30   continue
      WRITE(6,*) RA4
      WRITE(6,*) DA3
      END
