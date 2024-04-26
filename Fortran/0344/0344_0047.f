      INTEGER*4  X(10),Y(10),A(10),B(10)
      DATA       X/10*0/,Y/10*0/
      DATA       A/10*11/,B/10*3/
      DO 10 I=1,10
        X(I) =A(I)/B(I)
        Y(I)=MOD(A(I),B(I))
   10 CONTINUE
      WRITE(6,*) 'X = ',X
      WRITE(6,*) 'Y = ',Y
      STOP
      END
