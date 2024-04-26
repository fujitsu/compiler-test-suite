      PROGRAM MAIN
        INTEGER*4 ERROR,I,S_A,S_B,S_C,V_A,V_B,V_C
        DIMENSION S_A(10),S_B(10),S_C(10),V_A(10),V_B(10),V_C(10)
        DATA      S_A,S_B,S_C/10*1,10*2,10*3/
        DATA      V_A,V_B,V_C/10*1,10*2,10*3/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_A(I)+S_B(I)
            S_A(I)=S_C(I)+1
            S_C(I)=S_A(I)
          END DO
C
          V_A=V_A+V_B
          V_A=V_C+1
          V_C=V_A
C
          DO I=1,10,1
            IF(V_C(I) .NE. S_C(I)) THEN
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
