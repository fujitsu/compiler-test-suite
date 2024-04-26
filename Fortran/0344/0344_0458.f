      REAL*4    A(1026)/1024*1,11,11/
      REAL*4    XX(1026)/1024*0,1,1/
      REAL*4    S/0/,T/0/
      DO 10 I=1,1026
        IF(XX(I).EQ.1) THEN
          S=A(I)
        ENDIF
   10 CONTINUE
      DO 20 I=1,1026
        IF(XX(I).GT.1) THEN
          T=A(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) T
      STOP
      END
