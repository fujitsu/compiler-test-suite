      INTEGER*4 A(10)
      REAL*4    B(10)
      DATA    A/10*0/
      DATA    B/10*5.5/
      DO 10 I=1,10
        A(I)=B(I)
   10 CONTINUE
      WRITE(6,*) 'R*4 DATA = ',B
      WRITE(6,*) 'I*4 DATA = ',A
      STOP
      END
