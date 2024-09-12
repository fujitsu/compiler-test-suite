      PROGRAM MAIN
      integer a(10)/10*-1/
      N1 = 0 
      DO 45 I=10,1,-3
          N1 = N1 + 2
          a(i) = n1
 45       CONTINUE
 55          WRITE(6,*) '****'
      WRITE(6,*) '  N1 = ',N1,a
      N1 = 0 
      DO 46 I=1,10
          N1 = N1 - 2
 46       CONTINUE
 57          WRITE(6,*) '****'
      WRITE(6,*) '  N1 = ',N1

      N1 = 0 
      DO 47 I=1,10
          N1 = N1 + 1.5
 47       CONTINUE
 58          WRITE(6,*) '****'
      WRITE(6,*) '  N1 = ',N1

      N1 = 0 
      DO 48 I=1,10
          N1 = N1 + 2
 48       CONTINUE
      WRITE(6,*) '****'
      WRITE(6,*) '  N1 = ',N1

      END

      SUBROUTINE DLAMRG( N2,  DTRD2, INDEX )
      INTEGER            DTRD2, N2
      INTEGER            INDEX( * )
      INTEGER           IND2, N2SV
      N2SV = N2
      IND2 = 1

      DO 20 I = 1, N2SV
         INDEX( I ) = IND2
         IND2 = IND2 + DTRD2
 20      CONTINUE

         write(6,*) IND2
      RETURN
      END
