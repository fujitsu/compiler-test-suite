      LOGICAL*4 S/.FALSE./
      INTEGER*4 A(10),B(10)
      DATA      A/3,3,5,1,1,1,9,7,3,5/
      DATA      B/4,2,2,8,8,6,0,0,4,2/
      DO 10 I=1,10
        S=A(I).GT.B(I)
   10 CONTINUE
      WRITE(6,*) S
      STOP
      END
