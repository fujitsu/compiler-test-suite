      LOGICAL*4  A(10),B(10),C(10)
      DATA       A/10*.FALSE./,B/10*.TRUE./,C/10*.TRUE./
      DO 10 I=1,10
        A(I)=B(I).AND.C(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
