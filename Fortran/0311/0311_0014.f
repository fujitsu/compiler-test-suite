      PROGRAM MAIN
        INTEGER*4 ERROR,I,S_A,S_B,V_A,V_B
        REAL*4    X
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      V_A,V_B/10*0,10*0/
        DATA      ERROR/0/
C
          X=2.0
          DO I=1,10,1
            S_A(I)=X
          END DO
          X=S_A(1)+1.0
          DO I=1,10,1
            S_A(I)=S_B(I)+X
          END DO
C
          X=2.0
          V_A=X
          X=V_A(1)+1.0
          V_A=V_B+X
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
