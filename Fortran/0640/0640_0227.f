      PROGRAM MAIN
      REAL A(10)/10*90./,B(10,10)/70*2.5,30*4/
      DATA N,L/10,0/
      DO 11 L=1,N
       IF(L.EQ.0) GOTO 11
       DO 10 I=1,N
        S=A(I)
        DO 20 J=1,N
         S=S+B(I,J)
  20    CONTINUE
        A(I)=S
  10   CONTINUE
  11  WRITE(6,*) A
      L=L+1
      STOP
      END
