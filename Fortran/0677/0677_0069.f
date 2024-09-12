      INTEGER*4 A(64)/64*0/,B(64)/64*10/
      N=10
      DO 10 I=1,64
      IF(I.GT.15) THEN
      IF(N.GT.5) THEN
      A(I)=B(I)
      IF(I.GT.7) THEN
      A(I)=B(I)*5
      ELSE
      A(I)=B(I)*3
      ENDIF
      ELSE
      A(I)=B(I)*9
      ENDIF
      ENDIF
10    CONTINUE
      WRITE(6,*) A,B
      STOP
      END
