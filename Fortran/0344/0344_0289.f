      PROGRAM MAIN
      INTEGER MA,MI
      DIMENSION M(10),N(10)
      DATA M/5,10,0,8,11,2,-5,1,15,10/,MA/0/,N/10*0/
C
      MI=M(1)
      DO 10 I=2,9
        MA=MAX(MA,M(I))
        N(I)=M(I+1)-(M(I-1))
        MI=MIN(MI,N(I))
        M(I+1)=M(I+1)+N(I-1)
   10 CONTINUE
C
      
      WRITE(6,101) N
      WRITE(6,101) MA,MI
  101 FORMAT(5I15)
      STOP
      END
