
        INTEGER*4 ERROR,I,J,K,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      V_A,V_B/10*0,10*0/
        DATA      ERROR/0/
C
          DO J=1,10,1
            DO I=1,10,1
              S_A(I)=S_A(I)+1
            END DO
            DO K=1,10,1
              DO I=1,7,1
                S_B(I)=S_B(I+2)+1
              END DO
            END DO
            DO I=1,5,1
              S_A(I)=S_A(I)+S_B(I+5)
            END DO
          END DO
          DO J=1,10,1
            DO I=1,10,1
              S_A(I)=S_A(I)-2
            END DO
            DO K=1,10,1
              DO I=1,10,1
                S_A(I)=S_A(I)+2
              END DO
            END DO
            DO K=1,10,1
              DO I=1,10,2
                S_B(I)=S_B(I+1)+2
              END DO
            END DO
            DO I=1,5,1
              S_A(I+3)=S_A(I)+S_B(2*I-1)
            END DO
          END DO
          DO J=1,10,1
            DO I=1,10,1
              S_A(I)=S_A(I)-1
            END DO
          END DO
C
          DO J=1,10,1
            V_A=V_A+1
            DO K=1,10,1
              V_B(1:7)=V_B(3:9)+1
            END DO
            V_A(1:5)=V_A(1:5)+V_B(6:10)
          END DO
          DO J=1,10,1
            V_A=V_A-2
            DO K=1,10,1
              V_A(1:10)=V_A(1:10)+2
            END DO
            DO K=1,10,1
              V_B(1:10:2)=V_B(2:10:2)+2
            END DO
            V_A(4:8)=V_A(1:5)+V_B(1:10:2)
          END DO
          DO J=1,10,1
            V_A=V_A-1
          END DO
C
          DO I=1,10,1
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
      END 
