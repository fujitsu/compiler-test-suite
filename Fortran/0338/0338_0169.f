      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*1/
      INTEGER L(10)/1,2,3,4,5,6,7,8,9,10/
      DO 1 I=1,10
      IF(I.GT.5) GOTO 1
      A(I)=A(I)*B(I)+C(I)
1     CONTINUE
      DO 2 I=1,10
      IF(I.GT.5) GOTO 2
      A(I)=SQRT(B(I)+C(I))+A(I)
2     CONTINUE
      DO 3 I=1,10
      IF(I.GT.5) GOTO 3
      B(I)=A(L(I))
3     CONTINUE
      WRITE(6,*) A,B
      STOP
      END
