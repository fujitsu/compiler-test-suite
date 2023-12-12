        INTEGER*4 ERROR,I,J,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      V_A,V_B/10*0,10*0/
        DATA      ERROR/0/
C
          DO J=1,2,1
            IF(J .EQ. 1) THEN
              DO I=1,10,1
                S_A(I)=S_A(I)+1
              END DO
            ELSE
              DO I=1,10,1
                S_B(I)=S_B(I)+2
              END DO
            END IF
          END DO
C
          DO J=1,2,1
            IF(J .EQ. 1) THEN
              V_A=V_A+1
            ELSE
              V_B=V_B+2
            END IF
          END DO
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
      END
