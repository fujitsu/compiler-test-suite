      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      ERROR/0/
C
          J=10/2
          DO I=1,10,1
            S_A(I)=J
            K=S_A(1)
            S_B(I)=S_A(I)+K
          END DO
C
          J=10/2
          V_A(1:10)=J
          K=V_A(1)
          V_B=V_A+K
C
          DO I=1,10,1
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
