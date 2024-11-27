         REAL A(100),B(100),X(100)
         DATA A/10*1.,10*2.,10*3.,10*4.,10*5.,10*6.,10*7.,10*8.,
     E          10*9.,10*10.  /
         DO 111 I=1,100
           B(I) = A(I)
           X(I) = B(I) + B(I) + B(I) + B(I) + B(I) + B(I) + B(I)
     1          + B(I) + B(I) + B(I) + B(I) + B(I) + B(I) + B(I)
     2          + B(I) + B(I) + B(I) + B(I) + B(I) + B(I) + B(I)
     E          + B(I) + B(I) + B(I) + B(I) + B(I) + B(I) + B(I)
 111     CONTINUE
         PRINT *,X
         END
