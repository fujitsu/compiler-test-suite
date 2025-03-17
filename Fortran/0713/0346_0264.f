       REAL*4 A(10),B(10),C(10),D(10)
       DATA A,B,C,D/10*1.,10*1.,10*1.,10*1./
       DO 10 I=1,10
         IF( MOD(I,2) .NE. 0 ) THEN
            A(I)=I
           ELSE
            A(I)=I+3
         ENDIF
10     CONTINUE
       PRINT *,A
       STOP
       END
