      LOGICAL*4  A(10),B(10)
      DATA       A/5*.TRUE.,5*.FALSE./
      DATA       B/5*.FALSE.,5*.TRUE./
      DO 10 I=1,10
        A(I)=B(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
