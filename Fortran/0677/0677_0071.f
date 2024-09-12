      INTEGER*4 A(256)/256*0/,B(256)/256*10/
      N=10
      DO 10 I=1,256
      IF(I.GT.25) THEN
      IF(N.GT.5) THEN
      A(I)=B(I)
      IF(I.GT.7) THEN
      A(I)=B(I)*5
      ELSE
      A(I)=B(I)*3
      ENDIF
      A(I)=B(I)+(A(I)+2)
      ELSE
      A(I)=B(I)*9
      ENDIF
      ENDIF
10    CONTINUE
      WRITE(6,*) A,B
      STOP
      END
