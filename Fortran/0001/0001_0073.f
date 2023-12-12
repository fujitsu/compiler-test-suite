
        INTEGER*4 ERROR,I,J,K,L,M,S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      V_A,V_B/10*0,10*0/
        DATA      ERROR/0/
C
          L=AINT(10.5)
          M=L/2
          DO J=1,10,1
            DO I=1,L,1
              S_A(I)=S_A(I)+1
            END DO
            L=L-3
            DO K=1,10,1
              DO I=1,L,1
                S_B(I)=S_B(I+2)+1
              END DO
            END DO
            DO I=1,M,1
              S_A(I)=S_A(I)+S_B(I+5)
            END DO
          END DO
          L=M+M
          DO J=1,10,1
            DO I=1,L,1
              S_A(I)=S_A(I)-2
            END DO
            DO K=1,10,1
              DO I=1,L,1
                S_A(I)=S_A(I)+2
              END DO
            END DO
            DO K=1,10,1
              DO I=1,L,2
                S_B(I)=S_B(I+1)+2
              END DO
            END DO
            DO I=1,M,1
              S_A(I+3)=S_A(I)+S_B(2*I-1)
            END DO
          END DO
          DO J=1,10,1
            DO I=1,L,1
              S_A(I)=S_A(I)-1
            END DO
          END DO
C
          L=AINT(10.5)
          M=L/2
          DO J=1,10,1
            IF(L .GT. 0) THEN
              V_A(1:L)=V_A(1:L)+1
            ENDIF
            L=L-3
            IF(L .GT. 0) THEN
              DO K=1,10,1
                V_B(1:L)=V_B(3:L+2)+1
              END DO
            ENDIF
            V_A(1:M)=V_A(1:M)+V_B(M+1:10)
          END DO
          L=M+M
          DO J=1,10,1
            V_A(1:L)=V_A(1:L)-2
            DO K=1,10,1
              V_A(1:L)=V_A(1:L)+2
            END DO
            DO K=1,10,1
              V_B(1:L:2)=V_B(2:L:2)+2
            END DO
            V_A(M-1:M+3)=V_A(1:M)+V_B(1:2*M:2)
          END DO
          DO J=1,10,1
            V_A(1:L)=V_A(1:L)-1
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
            WRITE(6,FMT='(1H ,"S_A:",/,1H ,10I5/,
     -                    1H ,"V_A:",/,1H ,10I5/)') S_A,V_A
            WRITE(6,FMT='(1H ,"S_B:",/,1H ,10I5/,
     -                    1H ,"V_B:",/,1H ,10I5/)') S_B,V_B
          END IF
C
          STOP
      END
