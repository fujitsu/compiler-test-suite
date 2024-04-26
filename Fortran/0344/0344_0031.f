      INTEGER IMAX(10),IMIN(10)
      INTEGER A(10),B(10)
      DATA    IMAX/0,0,0,0,0,0,0,0,0,0/
      DATA    IMIN/0,0,0,0,0,0,0,0,0,0/
      DATA    A/5,5,5,5,5,6,6,6,6,6/
      DATA    B/7,7,7,7,7,8,8,8,8,8/
      DO 10 I=1,10
        IMAX(I)=MAX(A(I),B(I))
        IMIN(I)=MIN(A(I),B(I))
   10 CONTINUE
      WRITE(6,*) IMAX
      WRITE(6,*) IMIN
      STOP
      END
