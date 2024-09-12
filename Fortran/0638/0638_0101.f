       PROGRAM MAIN
       REAL*4 RA(10),RB(100),RC(10),FB(100),FC(10)
       COMMON CA(1000),CB,S
       DATA   RA/10*1.5/,RB/100*1.0/
       CB=0
       DO 701 J=1,10
         RK=J+RA(J)
       DO 700 I=1,100
         FB(I)=ABS(RB(I))
         S=1
         S=S+RA(J)
         S=S-RB(I)
         IF(I.EQ.5) GOTO 700
         CB=CB+RK
700      CONTINUE
701      CONTINUE
         WRITE(6,*) 'OK'
         STOP
         END
