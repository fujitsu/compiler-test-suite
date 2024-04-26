      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*1/
      INTEGER L(10)/10*1/
      DO 1 I=2,9
      IF(L(1).GT.2) GOTO 2
      A(I)=0
 2    CONTINUE
 1    A(I)=A(I)+B(I)+C(I)
      WRITE(6,*) A
      STOP
      END
