      REAL*8  DA2(10)/10*0/,DB2(10,10)/100*5/,a(10),da3/2/
      DO 710 I=1,10
         DA2(I)=0.0
         DO 710 K=1,10
 710        DA2(I)=DA2(I)+DB2(I,K)*3
 700  da3=da3*2
      do i=1,10
         a(i) = 1
      enddo
      write(6,*) da3
      write(6,*) a(1)
      write(6,*) da2(1)
      END
