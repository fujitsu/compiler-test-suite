      PROGRAM MAIN
        INTEGER*4 ERROR,I,S_A,S_B,V_A,V_B
        DIMENSION S_A(1000),S_B(1000),V_A(1000),V_B(1000)
        DATA      S_A,S_B/1000*1,1000*2/
        DATA      V_A,V_B/1000*1,1000*2/
        DATA      ERROR/0/
C
          DO I=1,1000,1
            S_A(I)=S_A(I)+S_B(I)
          END DO
C
          V_A=V_A+V_B
C
          DO I=1,1000,1
            IF(V_A(I) .NE. S_A(I)) THEN
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
