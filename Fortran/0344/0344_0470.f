      REAL*4    A(10)/2,2,1,3,10,9,7,5,3,3/
      REAL*4    B(10)/10*0/
      REAL*4    XX(10)/2,1,0,0,1,3,3,2,1,2/
      REAL*4    S/10/
      DO 10 I=1,10
        IF(XX(I).EQ.1) THEN
          S=A(I)
        ENDIF
        IF(XX(I).LT.1) THEN
          S=A(I)+I
        ENDIF
        IF(XX(I).GE.1) THEN
          S=A(I)-I
        ENDIF
        B(I)=S
   10 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) B
      STOP
      END
