      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,S_A,V_A
        DIMENSION S_A(10),V_A(10)
        DATA      S_A/5*1,5*2/
        DATA      V_A/5*1,5*2/
        DATA      ERROR/0/
C
          J=AINT(1.2)
          K=J+10/2
          DO I=J,K,1
            S_A(I)=S_A((I+1))
          END DO
C
          J=AINT(1.2)
          K=J+10/2
          V_A(J:K)=V_A(J+1:K+1)
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
      END PROGRAM MAIN
