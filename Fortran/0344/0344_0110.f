      INTEGER  A(10)/10*0/
      INTEGER  B(10)/1,2,3,4,5,6,7,8,9,10/
      INTEGER  C(10)/10,9,8,7,6,5,4,3,2,1/
      DO 10 I=1,10
        A(I)=B(I)+C(I)
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
