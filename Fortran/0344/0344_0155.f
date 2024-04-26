      REAL A(10),B(10),C(10)
      INTEGER X
      DATA A,B,C/10*1.,10*2.,10*3./
      DATA X/10/
      DATA M/10/

      DO 10 J=1,M
      DO 10 I=1,M
        IF (X.GT.0) THEN
           A(I)=B(I)+C(I)
        ENDIF
        IF (J.GT.0) THEN
           B(I)=B(I)+C(I)
        ENDIF
10    CONTINUE

       WRITE(6,99) A,B
99     FORMAT(5F10.5)
       STOP
       END
