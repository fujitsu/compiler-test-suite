      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,L,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A/5*1,5*2/
        DATA      S_B/5*5,5*10/
        DATA      V_A/5*1,5*2/
        DATA      V_B/5*5,5*10/
        DATA      ERROR/0/
        common K
C
          J=AINT(1.2)
          K=J+10/2
          DO I=J,K,1
            S_A(I)=S_A((I+1))
            S_B(I)=S_B((I+1))
          END DO
C
          CALL SUB
          J=AINT(1.2)
          L=J
          K=J+10/2
          V_A(J:K)=V_A(J+1:K+1)
          V_B(L:K)=V_B(L+1:K+1)
C
          DO I=1,10,1
            IF((V_A(I) .NE. S_A(I)) .OR. (V_B(I) .NE. S_B(I))) THEN
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
C
      SUBROUTINE SUB
        COMMON K
        K=1
        RETURN
      END  
