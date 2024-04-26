      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,L,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1,10*2/
        DATA      V_A,V_B/10*1,10*2/
        DATA      ERROR/0/
C
          J=2
          K=1
          L=4
          DO I=1,10,1
            S_A(I)=S_A(I)+J
          END DO
          J=J+1
          K=K+2
          L=L+3
          DO I=1,10,1
            S_B(I)=S_B(I)+L
          END DO
C
          J=2
          K=1
          L=4
          V_A=V_A+J
          J=J+1
          K=K+2
          L=L+3
          V_B=V_B+L
C
          DO I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
            IF(V_B(I) .NE. S_B(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
          END IF
C
          STOP
      END PROGRAM MAIN
