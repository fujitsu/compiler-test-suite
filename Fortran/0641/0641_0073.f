      IMPLICIT INTEGER*4 (A)
      INTEGER*4 N1, N2
      INTEGER IMONTH(12)
      CHARACTER*4 CALEN(12,7,6), DAY(31)
      INTEGER JAN
      PARAMETER (JAN = 1)
      DATA DAY/' 1',' 2',' 3',' 4',' 5',' 6',' 7',' 8',' 9','10','11',
     X  '12','13','14','15','16','17','18','19','20','21','22','23','24'
     X  ,'25','26','27','28','29','30','31'/ 
      DATA IMONTH/31,28,31,30,31,30,31,31,30,31,30,31/ 
      DO I=1,6
       DO K=1,9,4
        CALEN(K,1,I) = '****'
        CALEN(K+1,1,I) = '****'
        CALEN(K+2,1,I) = '****'
        CALEN(K+3,1,I) = '****'
        CALEN(K,2,I) = '****'
        CALEN(K+1,2,I) = '****'
        CALEN(K+2,2,I) = '****'
        CALEN(K+3,2,I) = '****'
        CALEN(K,3,I) = '****'
        CALEN(K+1,3,I) = '****'
        CALEN(K+2,3,I) = '****'
        CALEN(K+3,3,I) = '****'
        CALEN(K,4,I) = '****'
        CALEN(K+1,4,I) = '****'
        CALEN(K+2,4,I) = '****'
        CALEN(K+3,4,I) = '****'
       END DO
      END DO
      DO J=5,7,1
       DO I=1,6
        DO K=1,9,4
         CALEN(K,J,I) = '****'
         CALEN(K+1,J,I) = '****'
         CALEN(K+2,J,I) = '****'
         CALEN(K+3,J,I) = '****'
        END DO
       END DO
      END DO
      DO K=1,12
       N1 = 1
       N2 = 1
       DO L=1,IMONTH(K)
        CALEN(K,N1,N2) = DAY(L)
        IF (N1 .GE. 7) THEN
         N1 = 0
        END IF
        IF (N2 .GE. 6) THEN
         N2 = 0
        END IF
        N1 = N1 + 1
        N2 = N2 + 1
       END DO
      END DO
      WRITE (6, *) CALEN
      STOP 
      END
