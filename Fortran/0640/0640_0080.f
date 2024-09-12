      IMPLICIT  INTEGER*4(A)
      INTEGER*4 JAN
      INTEGER*4 N1,N2
      INTEGER   IMONTH(12)
      CHARACTER*4 CALEN(12,7,6),DAY(31)
      DATA      DAY/' 1',' 2',' 3',' 4',' 5',' 6',' 7',' 8',' 9','10',
     1              '11','12','13','14','15','16','17','18','19','20',
     2              '21','22','23','24','25','26','27','28','29','30',
     3              '31'/
      DATA      IMONTH/31,28,31,30,31,30,31,31,30,31,30,31/
      DATA  JAN/1/
      DO 10 I=1,6
       DO 10 J=1,7
        DO 10 K=1,12
          CALEN(K,J,I)='****'
 10   CONTINUE
      DO 60 K=1,12
        N1=JAN
        N2=1
       DO 50 L=1,IMONTH(K)
         CALEN(K,N1,N2)=DAY(L)
         IF (N1.GE.7) N1=0
         IF (N2.GE.6) N2=0
         N1=N1+1
         N2=N2+1
   50 CONTINUE
   60 CONTINUE
      WRITE(6,*) CALEN
      STOP
      END
