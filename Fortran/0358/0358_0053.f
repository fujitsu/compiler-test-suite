      REAL*8  DA2(10)/10*0/,DB2(10,10)/100*5/
      DO 710 I=1,10
         DA2(I)=0.0
         DO 710 K=1,10
 710        DA2(I)=DA2(I)+DB2(I,K)*3
 700  continue
      write(6,*) da2
      END
