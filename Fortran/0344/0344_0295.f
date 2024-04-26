      PROGRAM MAIN
      INTEGER A(10),B(100),C(100)
      DATA B/10*5,10*1,10*-6,10*0,10*-1,10*1,10*12,
     +         10*4,10*3,10*-2/,C/100*1/
      DATA N/100/,A/10,20,30,40,50,60,70,80,90,100/
C
      DO 20 I=1,N
        M=A(I/11+1)
        DO 10 J=A(I/12+1),1,-1
          IF (B(J).GE.0) THEN
            C(J)=B(M)+J*5
            C(J)=C(J)-A(J/11+1)*9
            GOTO 10
          ENDIF
          C(J)=C(J)-M
          B(I)=B(M)+B(I)+J
   10   CONTINUE
        B(I)=B(M)+B(I)+I
   20 CONTINUE
      
      WRITE (6,*) C
      STOP
      END
