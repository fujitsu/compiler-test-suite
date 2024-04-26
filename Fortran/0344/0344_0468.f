      INTEGER*4 A(10)/9,8,9,8,7,6,7,6,5,4/
      INTEGER*4 B(10)/7,7,6,6,5,5,4,4,3,3/
      INTEGER*4 C(10)/10*2/
      INTEGER*4 X(10)/10*1/
      INTEGER*4 Y(10)/1,0,0,1,1,0,1,0,0,0/
      INTEGER   S/11/,SS(10)/10*11/
      N=9
      DO 10 I=1,N
        IF(X(I).EQ.1) THEN
          IF(Y(I).EQ.1) THEN
            S=A(I)
            IF(Y(I).EQ.1) THEN
              C(I)=A(I)+S/2
              IF(X(I).GT.-2) THEN
                SS(3)=B(I)
              ENDIF
            ENDIF
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) SS
      STOP
      END
