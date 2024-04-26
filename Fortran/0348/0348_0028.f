      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,L,RESULT,IFUN,JFUN,DVT1,
     +            S_A,S_B,V_A,V_B
        DIMENSION DVT1(10),S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1,10*2/
        DATA      V_A,V_B/10*1,10*2/
        DATA      ERROR/0/

          J=INT(1.4)

          DO I=1,10,1
          END DO

          K=J+4
          L=2
          S_A(K)=1+S_A(K)

          K=L/1
          V_A(2:)=V_A(K:)   +1

          write(6,*) V_A

          STOP
      END PROGRAM MAIN

