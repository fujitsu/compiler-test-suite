      PROGRAM MAIN
      INTEGER A(10),B(10),C(10)
      DATA A,B/20*1/,C/10*0/
      DO 30 I=1,10
        DO 20 K=1,10
    2     IF (A(K)) 20,15,3
    3     DO 10 J=1,10
    5       IF (B(J).EQ.0) GOTO 20
    4       IF (B(J)*2) 20,6,7
    6       GOTO 10
    7       B(J)=J
   10     CONTINUE
   15     A(K)=A(K)+K
   20   CONTINUE
        C(I)=C(I)+I
   30 CONTINUE
   40 WRITE(6,*) A
      WRITE(6,*) C
      STOP
      END
