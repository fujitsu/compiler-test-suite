      PROGRAM MAIN
        INTEGER*4         ERROR,I,J,K,L,M,N
        INTEGER*4         S_A(10)     ,S_B(10,10)  ,S_DVT1(10)
        INTEGER*4         V_A(10)     ,V_B(10,10)  ,S_DVT2(10,10)
        CHARACTER(LEN=10) S_CHA(10)   ,S_CHB(10,10),S_DVT3(10)
        CHARACTER(LEN=10) V_CHA(10)   ,V_CHB(10,10),S_DVT4(10,10)
        DATA   S_A,S_B/10*0,100*0/
        DATA   V_A,V_B/10*0,100*0/
        DATA   S_CHA,S_CHB/10*'ABCDEFGHIJ',100*'ABCDEFGHIJ'/
        DATA   V_CHA,V_CHB/10*'ABCDEFGHIJ',100*'ABCDEFGHIJ'/
        DATA   ERROR/0/
C
          K=AINT(2.3)
          L=(K+10)/2
          M=COS(0.0)
          N=M+5
          DO I=1,5,1
            S_DVT1(I)=S_A(I)+1
          END DO
          DO I=1,5,1
            S_A(I+1)=S_DVT1(I)
          END DO
          DO I=K,L,1
            S_DVT1(I)=S_A(I)+2
          END DO
          DO I=K,L,1
            S_A(I+1)=S_DVT1(I)
          END DO
          DO J=1,5,1
            DO I=1,5,1
              S_DVT2(I,J)=S_B(I+1,J)+3
            END DO
          END DO
          DO J=1,5,1
            DO I=1,5,1
              S_B(I+3,J+2)=S_DVT2(I,J)
            END DO
          END DO
          DO J=K,L,1
            DO I=K,L,1
              S_DVT2(I,J)=S_B(I+1,J)+4
            END DO
          END DO
          DO J=K,L,1
            DO I=K,L,1
              S_B(I+3,J+2)=S_DVT2(I,J)
            END DO
          END DO

          DO I=1,5,1
            S_DVT3(I)(1:5)=S_CHA(I)(2:6)
          END DO
          DO I=1,5,1
            S_CHA(I+1)(1:5)=S_DVT3(I)(1:5)
          END DO
          DO I=K,L,1
            S_DVT3(I)(M:N)=S_CHA(I)(M+1:N+1)
          END DO
          DO I=K,L,1
            S_CHA(I+1)(M:N)=S_DVT3(I)(M:N)
          END DO
          DO J=1,5,1
            DO I=1,5,1
              S_DVT4(I,J)(1:5)=S_CHB(I+1,J)(2:6)
            END DO
          END DO
          DO J=1,5,1
            DO I=1,5,1
              S_CHB(I+3,J+2)(1:5)=S_DVT4(I,J)(1:5)
            END DO
          END DO
          DO J=K,L,1
            DO I=K,L,1
              S_DVT4(I,J)(M:N)=S_CHB(I+1,J)(M+1:N+1)
            END DO
          END DO
          DO J=K,L,1
            DO I=K,L,1
              S_CHB(I+3,J+2)(M:N)=S_DVT4(I,J)(M:N)
            END DO
          END DO

C
          K=AINT(2.3)
          L=(K+10)/2
          M=COS(0.0)
          N=M+5
          V_A(2:6)            =V_A(1:5)+1
          V_A(K+1:L+1)        =V_A(K:L)+2
          V_B(4:8,3:7)        =V_B(2:6,1:5)+3
          V_B(K+3:L+3,K+2:L+2)=V_B(K+1:L+1,K:L)+4

          V_CHA(2:6)(1:5)            =V_CHA(1:5)(2:6)
          V_CHA(K+1:L+1)(M:N)        =V_CHA(K:L)(M+1:N+1)
          V_CHB(4:8,3:7)(1:5)        =V_CHB(2:6,1:5)(2:6)
          V_CHB(K+3:L+3,K+2:L+2)(M:N)=V_CHB(K+1:L+1,K:L)(M+1:N+1)

C
          DO I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
            IF(V_CHA(I) .NE. S_CHA(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          DO J=1,10,1
            DO I=1,10,1
              IF(V_B(I,J) .NE. S_B(I,J)) THEN
                ERROR=ERROR+1
              END IF
              IF(V_CHB(I,J) .NE. S_CHB(I,J)) THEN
                ERROR=ERROR+1
              END IF
            END DO
          END DO
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
          END IF
C
          STOP
      END PROGRAM MAIN
