      INTEGER*4 A(10)/9,8,9,8,7,6,7,6,5,4/
      INTEGER*4 B(10)/7,7,6,6,5,5,4,4,3,3/
      INTEGER*4 C(10)/10*0/
      INTEGER*4 X(10)/10*1/
      INTEGER   S/11/,SS(10)/10*11/
      N=9
      DO 10 I=1,N
        IF(X(I).EQ.0) THEN
          S=A(I)
          C(I)=S+1
          S=777
        ENDIF
   10 CONTINUE
      DO 20 I=1,N
        IF(X(I).GT.2) THEN
          SS(I)=B(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) SS
      STOP
      END
