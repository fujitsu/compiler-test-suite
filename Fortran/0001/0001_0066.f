        INTEGER*4 ERROR,I,N,M,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(5),V_A(10),V_B(5)
        DATA      S_A,S_B/10*0,5*0/
        DATA      V_A,V_B/10*0,5*0/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_A(I)+1
          END DO
          DO I=1,5,1
            S_B(I)=S_B(I)+2
          END DO
          N=S_A( 1)+S_B(1)
          M=S_A(10)*S_B(5)
          DO I=1,N,1
            S_A(I)=S_A(I)+3
          END DO
          DO I=1,M,1
            S_B(I)=S_B(I)+4
          END DO
          M=M+S_B(1)
          DO I=1,M,1
            S_A(I)=S_A(I)+5
          END DO
          DO I=1,5,1
            S_B(I)=S_B(I)+6
          END DO
C
          V_A=V_A+1
          V_B=V_B+2
          N=V_A( 1)+V_B(1)
          M=V_A(10)*V_B(5)
          V_A(1:N)=V_A(1:N)+3
          V_B(1:M)=V_B(1:M)+4
          M=M+V_B(1)
          V_A(1:M)=V_A(1:M)+5
          V_B=V_B+6
C
          DO I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          DO I=1,5,1
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
