      REAL*4    A(10)/10*0/
      REAL*4    B(10)/10*1/
      REAL*4    XX(10)/2,1,0,0,1,3,3,2,1,2/
      REAL*4    YY(10)/1,0,0,1,1,0,1,2,1,2/
      REAL*4    S/10/,T1/11/,T2/22/
      N=9
      DO 10 I=1,N
        IF(XX(I)-2) 11,12,12
   11     A(I)= 1
          GOTO 10
   12   IF(YY(I)-1) 22,22,21
   21     S=T1
          GOTO 33
   22     S=T2
   33   A(I)=SQRT(B(I))*S
   10 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) A
      STOP
      END
