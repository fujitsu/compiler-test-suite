      PROGRAM MAIN
        INTEGER*4 ERROR,I
        REAL*4    S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1.0,10*2.0/
        DATA      V_A,V_B/10*1.0,10*2.0/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_A(I)+SIN(S_A(I)+S_B(I))
            S_B(I)=S_B(I)+COS(S_A(I)-S_B(I))
          END DO
C
          V_A=V_A+SIN(V_A+V_B)
          V_B=V_B+COS(V_A-V_B)
C
          DO I=1,10,1
            IF(ABS(V_A(I)-S_A(I))>0.1E-5) THEN
              ERROR=ERROR+1
            END IF
            IF(ABS(V_B(I)-S_B(I))>0.1E-5) THEN
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
