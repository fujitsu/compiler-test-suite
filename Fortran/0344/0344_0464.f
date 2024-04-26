      INTEGER*4 A(10)/9,8,9,8,7,6,7,6,5,4/
      INTEGER*4 B(10)/7,7,6,6,5,5,4,4,3,3/
      INTEGER*4 X(10)/1,1,1,1,0,0,1,0,1,0/
      INTEGER   S/0/,SS(10)/10*0/
      DO 10 I=1,10
        IF(X(I).EQ.1) THEN
          S=A(I)
        ENDIF
   10 CONTINUE
      DO 20 I=1,10
        IF(X(I).EQ.1) THEN
          SS(I)=B(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) SS
      STOP
      END
