        INTEGER*4 S_A,S_B,V_A,V_B
        DIMENSION S_A(10),V_A(10),V_B(11)
        DATA      S_A/10*1/
        DATA      V_A,V_B/10*1,10*2,0/
C
          J=INT(1)
          DO I=1,1
          END DO
          K=J+4
          S_A(K)=S_A(K)

          L=2
          K=INT(L/1)
          V_A=V_B(K:)

      write(6,*) V_A,K

      END
