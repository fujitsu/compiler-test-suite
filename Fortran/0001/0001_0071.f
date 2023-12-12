
        INTEGER*4 ERROR,I,J,K,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      V_A,V_B/10*0,10*0/
        DATA      ERROR/0/
C
          DO J=1,9,1
            DO I=J,J+1,1
              S_A(I)=S_A(I)+1
            END DO
            DO K=1,9,1
              DO I=K,K+1,1
                S_B(I)=S_B(I)+1
              END DO
            END DO
            DO I=J,J+1,1
              S_A(I)=S_A(I)+S_B(I)
            END DO
          END DO
          DO J=1,9,1
            DO I=J,J+1,1
              S_A(I)=S_A(I)-2
            END DO
            DO K=1,9,1
              DO I=K,K+1,1
                S_A(I)=S_A(I)+2
              END DO
            END DO
            DO K=1,9,1
              DO I=K,K+1,1
                S_B(I)=S_B(I)+2
              END DO
            END DO
            DO I=J,J+1,1
              S_A(I)=S_A(I)+S_B(I)
            END DO
          END DO
          DO J=1,9,1
            DO I=J,J+1,1
              S_A(I)=S_A(I)-1
            END DO
          END DO
C
          DO J=1,9,1
            V_A(J:J+1)=V_A(J:J+1)+1
            DO K=1,9,1
              V_B(K:K+1)=V_B(K:K+1)+1
            END DO
            V_A(J:J+1)=V_A(J:J+1)+V_B(J:J+1)
          END DO
          DO J=1,9,1
            V_A(J:J+1)=V_A(J:J+1)-2
            DO K=1,9,1
              V_A(K:K+1)=V_A(K:K+1)+2
            END DO
            DO K=1,9,1
              V_B(K:K+1)=V_B(K:K+1)+2
            END DO
            V_A(J:J+1)=V_A(J:J+1)+V_B(J:J+1)
          END DO
          DO J=1,9,1
            V_A(J:J+1)=V_A(J:J+1)-1
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
