      INTEGER*4 A(10)/9,8,9,8,7,6,7,6,5,4/
      INTEGER*4 B(10)/9,9,8,8,7,7,6,6,5,5/
      INTEGER*4 X(10)/1,1,1,1,0,0,1,0,1,0/,Y/4/
      LOGICAL   S/.FALSE./,SS(10)/10*.FALSE./
      DO 10 I=1,10
        IF(X(4).EQ.1) THEN
          S=A(I).LE.B(I)
        ENDIF
   10 CONTINUE
      DO 20 I=1,10
        IF(Y.GT.0) THEN
          SS(3)=A(I).LE.B(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) SS
      STOP
      END
