      REAL*4    A(10)/2,4,6,8,10,9,7,5,3,3/
      REAL*4    B(10)/10*0/
      REAL*4    XX(10)/2,1,0,0,1,3,3,2,1,2/
      REAL*4    S/10/
      DO 10 I=1,10
        IF(XX(I).LT.2) THEN
          S=S
        ELSE
          S=A(I)
        ENDIF
   10 CONTINUE
      DO 20 I=1,10
        IF(XX(I).LT.1) THEN
          B(2)=S
        ELSE
          B(3)=A(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) B
      STOP
      END
