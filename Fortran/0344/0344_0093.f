      REAL A(10)/10*0/
      REAL B(10)/10*1/
      REAL C(10)/10*2/
      DO 10 I=1,10
        A(I)=B(I)+C(I)
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT(4F10.5)
      STOP
      END
