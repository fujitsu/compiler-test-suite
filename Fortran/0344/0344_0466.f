      INTEGER*4 A(10)/9,8,9,8,7,6,7,6,5,4/
      INTEGER*4 B(10)/9,8,9,8,7,6,7,6,5,4/
      INTEGER*4 X(10)/1,1,1,1,0,0,1,0,1,0/
      INTEGER   S/0/
      LOGICAL   LL(10)/10*.FALSE./
      DO 10 I=1,10
        IF(X(I).EQ.1) THEN
        IF(X(4).EQ.1) THEN
          S=A(I)
        ENDIF
        ENDIF
   10 CONTINUE
      N=9
      DO 20 I=1,N
        IF(X(I).EQ.1) THEN
        IF(X(7).EQ.1) THEN
          LL(5)=A(I).EQ.B(I)
        ENDIF
        ENDIF
   20 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) LL
      STOP
      END
