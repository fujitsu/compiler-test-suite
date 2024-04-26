      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,L,RESULT,IFUN,JFUN,DVT1,
     +            S_A,S_B,V_A,V_B
        DIMENSION DVT1(10),S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1,10*2/
        DATA      V_A,V_B/10*1,10*2/
        DATA      ERROR/0/
C
          J=INT(1.4)
          L=INT(J+8.2)
          K=INT(L/2)
          DO I=1,10,1
            S_A(I)=S_A(I)+S_B(I)
          END DO
          DO I=1,5,1
            S_A(I)=S_A(I+1)  +S_B(I+2)
          END DO
          DO I=J,K,1
            S_A(I)=S_A(I+1)+S_B(I+2)
          END DO
          DO I=K,L,1
            S_A(I-K+J)=S_A(I)+S_B(I)
          END DO
          K=J+4
          L=K+4
          I=K
          S_A(I-K+J)=1+S_A(I);I=I+1
          S_A(I-K+J)=2+S_A(I);I=I+1
          S_A(I-K+J)=3+S_A(I);I=I+1
          S_A(I-K+J)=4+S_A(I);I=I+1
          S_A(I-K+J)=5+S_A(I);I=I+1
          I=K
          S_A(I-K+J)=S_A(I)+1;I=I+1
          S_A(I-K+J)=S_A(I)+2;I=I+1
          S_A(I-K+J)=S_A(I)+3;I=I+1
          S_A(I-K+J)=S_A(I)+4;I=I+1
          S_A(I-K+J)=S_A(I)+5;I=I+1
          DO I=1,10,1
            DVT1(I)=S_A(I)+S_B(I)
          END DO
          RESULT=IFUN(DVT1)
          DO I=K,L,1
            S_A(I-K+J)=RESULT+S_A(I)
          END DO
          DO I=1,10,1
            DVT1(I)=S_A(I)+S_B(I)
          END DO
          RESULT=IFUN(DVT1)
          DO I=K,L,1
            S_A(I-K+J)=S_A(I)+RESULT+S_B(I)
          END DO
          DO I=1,10,1
            DVT1(I)=S_A(I)+S_B(I)
          END DO
          RESULT=JFUN(DVT1)
          DO I=J,RESULT,1
            S_A(I)=S_A(I)
          END DO
C
          J=INT(1.4)
          L=INT(J+8.2)
          K=INT(L/2)
          V_A=V_A+V_B
          V_A(1:5)  =V_A(2:6)    +V_B(3:7)
          V_A(J:K)  =V_A(J+1:K+1)+V_B(J+2:K+2)
          V_A(J:K+2)=V_A(K:L)    +V_B(K:L)
          K=J+4
          L=K+4
          V_A(J)   = 1 + V_A(K)
          V_A(J+1) = 2 + V_A(K+1)
          V_A(J+2) = 3 + V_A(K+2)
          V_A(J+3) = 4 + V_A(K+3)
          V_A(J+4) = 5 + V_A(K+4)
          V_A(J)   = V_A(K)   + 1
          V_A(J+1) = V_A(K+1) + 2
          V_A(J+2) = V_A(K+2) + 3
          V_A(J+3) = V_A(K+3) + 4
          V_A(J+4) = V_A(K+4) + 5
          V_A(J:K)=IFUN(V_A+V_B)+V_A(K:L)
          V_A(J:K)=V_A(K:L)     +IFUN(V_A+V_B)+V_B(K:L)
          V_A(J:JFUN(V_A+V_B))=V_A(J:JFUN(V_A+V_B))
C
          DO I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
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
      END PROGRAM MAIN
C
C
      INTEGER*4 FUNCTION IFUN(A)
        INTEGER*4 I,A(10)
C
          IFUN=0
          DO I=1,10,1
            IFUN=IFUN+A(I)
          END DO
          IFUN=IFUN/10
C
          RETURN
      END FUNCTION IFUN
C
C
      INTEGER*4 FUNCTION JFUN(A)
        INTEGER*4 I,A(10)
C
          JFUN=0
          DO I=1,10,1
            JFUN=JFUN+A(I)
          END DO
          JFUN=MOD(JFUN,5)+2
C
          RETURN
      END FUNCTION JFUN
