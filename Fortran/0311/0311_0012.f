      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,S_DVT1,S_A,S_B,V_A,V_B
        DIMENSION S_DVT1(10),S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1,10*2/
        DATA      V_A,V_B/10*1,10*2/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_B(I)
            J=S_A(1)
            S_B(I)=S_B(I)+J
          END DO
          DO I=1,10,1
            S_DVT1(I)=S_A(I)+S_B(I)
          END DO
          CALL SUB(ERROR,S_A,S_B,S_DVT1)
          DO I=1,10,1
            S_A(I)=S_A(I)+S_B(I)
          END DO
C
          V_A=V_B
          J=V_A(1)
          V_B=V_B+J
          CALL SUB(ERROR,V_A,V_B,V_A+V_B)
          V_A=V_A+V_B
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


      SUBROUTINE SUB(ERROR,A,B,ADDDATA)
        INTEGER*4 ERROR,I,A,B,ADDDATA
        DIMENSION A(10),B(10),ADDDATA(10)
C
          DO I=1,10,1
            IF(A(I)+B(I) .NE. ADDDATA(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
C
          RETURN
      END SUBROUTINE SUB
