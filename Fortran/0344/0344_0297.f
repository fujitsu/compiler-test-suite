      PROGRAM MAIN
      INTEGER A(10000),B,C(10000)
      DATA A/200*20,300*30,500*50,1000*100,3000*300,5000*500/,B/0/
      DATA C/10000*1/
      DO 30 I=1,9999
        IF (A(I).LE.I) THEN
          DO 10 J=A(I),10000
            C(J)=A(J)+J
   10     CONTINUE
        ELSE
          DO 20 K=A(I),A(I+1)
            C(I)=A(K)+K+C(K)
            C(I)=A(I)+C(I)
   20     CONTINUE
        ENDIF
        B=MAX(I,B,A(I))
   30 CONTINUE
C
      WRITE (6,*) B
      WRITE (6,*) (C(I),I=1,10000,50)
      STOP
      END
