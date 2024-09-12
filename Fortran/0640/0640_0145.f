      PROGRAM MAIN
      REAL A(10)/1,2,3,4,5,6,7,8,9,0/,B(10)/2,4,6,8,10,12,14,16,18,20/
      S=0.
      DO 10 I=1,10
       A(I)=I
       T=B(I)+S
  11   S=T+A(I)
  10  CONTINUE
      WRITE(6,*) S
      STOP
      END
