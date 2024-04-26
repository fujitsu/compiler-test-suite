      PROGRAM MAIN
        INTEGER*4 ERROR,I,S_DVT1,S_A,V_A
        DIMENSION S_DVT1(1000),S_A(1000),V_A(1000)
        DATA      S_A/1,999*0/
        DATA      V_A/1,999*0/
        DATA      ERROR/0/
C
          DO I=1,1000,1
            S_DVT1(I)=S_A(1)
          END DO
          DO I=1,1000,1
            S_A(I)=S_DVT1(I)
          END DO
C
          V_A(1:1000)=V_A(1)
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
