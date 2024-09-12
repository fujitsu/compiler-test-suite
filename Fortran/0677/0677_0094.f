      INTEGER*4 J(10),K
      DATA J/10*0/,K/1/

      DO 10 I=1,10
10        J(I)=K
      WRITE(6,*)J,K
      END
