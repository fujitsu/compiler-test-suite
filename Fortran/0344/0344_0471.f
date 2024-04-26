      REAL*4    A(10)/2,2,1,3,10,9,7,5,3,3/
      REAL*4    B(10)/10*0/
      REAL*4    XX(10)/2,1,0,0,1,3,3,2,1,2/
      REAL*4    YY(10)/1,1,1,1,1,1,1,2,1,2/
      REAL*4    ZZ(10)/0,0,0,0,0,0,1,2,1,2/
      REAL*4    S/10/
      N=9
      DO 10 I=1,N
        IF(XX(I).EQ.1) THEN
          IF(YY(I).NE.1) THEN
            S=A(I)
          ENDIF
        ENDIF
        IF(ZZ(I).LT.1) THEN
          IF(ZZ(3).GT.1) THEN
            S=A(I)+I
          ENDIF
        ENDIF
        IF(XX(I).LE.1) THEN
          S=A(I)-I
        ENDIF
        B(I)=S
   10 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) B
      STOP
      END
