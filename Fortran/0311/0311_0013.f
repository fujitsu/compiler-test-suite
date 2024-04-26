      PROGRAM MAIN
        INTEGER*4 ERROR,I,S_DVT1,S_A,S_B,V_A,V_B
        DIMENSION S_DVT1(20),S_A(20),S_B(20),V_A(20),V_B(20)
        DATA      S_A,S_B/20*1,10*2,10*3/
        DATA      V_A,V_B/20*1,10*2,10*3/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_B(I)
          END DO
          DO I=1,10,1
            S_DVT1(I)=S_A(I)
          END DO
          DO I=1,10,1
            S_A(1+I)=S_DVT1(I)
          END DO
C
          V_A(1:10)=V_B(1:10)
          V_A(2:11)=V_A(1:10)
C
          DO I=1,20,1
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
