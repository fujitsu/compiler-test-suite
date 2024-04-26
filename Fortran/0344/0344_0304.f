      PROGRAM MAIN
      INTEGER A(10000),B(10)
      CHARACTER*1 TEMP1(10000)/10000*' '/,TEMP2(10)
      DATA TEMP2/'A','B','C','D','E','F','G','H','I','J'/,N/1/,M/1/
      DATA A/10000*0/,B/10*0/
C
      DO 200 J=1,10
        B(J)=J
        DO 100 I=1,10000
          A(I)=A(I)+I+J
          TEMP1(N)=TEMP2(I/1001+1)
          N=N+1
  100   CONTINUE
        N=1
        DO 200 M=5000,10000
          A(J)=A(M)+J
          A(M)=A(I/M+1)+N+M+A(M)
  200 CONTINUE
C
      WRITE (6,*) (TEMP1(I),I=1,10000,100)
      WRITE (6,*) (B(I),I=1,10)
      WRITE (6,*) (A(I),I=1,10000,100)
      STOP
      END
