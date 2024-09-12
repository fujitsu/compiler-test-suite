      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,C1,DVT1,DVT2 &
                 ,RESULT,IFUN,JFUN,S_A,S_B,V_A,V_B
        DIMENSION DVT1(10),DVT2(10),S_A(10),S_B(10),V_A(10),V_B(10)
        DATA S_A,S_B/1,2,3,4,5,6,7,8,9,0,0,9,8,7,6,5,4,3,2,1/
        DATA V_A,V_B/1,2,3,4,5,6,7,8,9,0,0,9,8,7,6,5,4,3,2,1/
        DATA ERROR/0/

          I=COS(0.0)
          K=AINT(10.4)
          J=(I+K)/2
          DO C1=1,10,1
            DVT1(C1)=S_A(C1)+S_B(C1)
          END DO
          RESULT=IFUN(DVT1,10)
          DO C1=1,10,1
            S_A(C1)=RESULT
          END DO
          DO C1=I,J,1
            DVT1(C1)=S_A(C1)+S_B(C1-I+J+1)
          END DO
          RESULT=IFUN(DVT1,J-I+1)
          DO C1=I,10,1
            S_B(C1)=RESULT
          END DO
          DO C1=J+1,K,1
            DVT1(C1+I-J-1)=S_A(C1)+S_B(C1+I-J-1)
          END DO
          RESULT=JFUN(DVT1,K-J)
          DO C1=1,10,1
            DVT2(C1)=RESULT+S_A(C1)
          END DO
          RESULT=IFUN(DVT2,10)
          DO C1=1,10,1
            S_A(C1)=RESULT-S_A(C1)
          END DO
          DO C1=1,10,1
            DVT1(C1)=S_A(C1)+S_B(C1)
          END DO
          RESULT=JFUN(DVT1,10)
          DO C1=I,J,1
            DVT2(C1)=S_A(C1)+RESULT
          END DO
          RESULT=IFUN(DVT2,J-I+1)
          DO C1=1,10,1
            S_B(C1)=RESULT-S_B(C1)
          END DO
          I=I+K-1
          DO C1=1,10,1
            DVT1(C1)=1
          END DO
          RESULT=IFUN(DVT1,10)
          DO C1=1,10,1
            S_A(C1)=S_B(C1)-RESULT
          END DO
          DO C1=1,I,1
            DVT1(C1)=J
          END DO
          RESULT=IFUN(DVT1, I)
          DO C1=1,10,1
            S_B(C1)=S_A(C1)-RESULT
          END DO

          I=COS(0.0)
          K=AINT(10.4)
          J=(I+K)/2
          V_A=IFUN(V_A+V_B,10)
          V_B=IFUN(V_A(I:J)+V_B(J+1:K),J-I+1)
          V_A=IFUN(JFUN(V_A(J+1:K)+V_B(I:J),K-J)+V_A,10)-V_A
          V_B=IFUN(V_A(I:J)+JFUN(V_A+V_B,10),J-I+1)-V_B
          I=I+K-1
          V_A=V_B-IFUN((/(1,ii=1,10)/),10)
          V_B=V_A-IFUN((/(J,ii=1,I)/), I)

          DO C1=1,10,1
            IF(V_B(C1) .NE. S_B(C1)) THEN
              ERROR=ERROR+1
            ENDIF
          END DO
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) '*** OK ***'
          ELSE
            WRITE(6,*) '*** NG ?? ***'
            WRITE(6,*) 'S_B=',S_B
            WRITE(6,*) 'V_B=',V_B
          END IF

          STOP
      END PROGRAM MAIN

      INTEGER*4 FUNCTION IFUN(A,N)
        INTEGER*4 I,A(N),N

          IFUN=0
          DO I=1,N,1
            IFUN=IFUN+A(I)
          END DO
          IFUN=IFUN/N

          RETURN
      END FUNCTION IFUN

      INTEGER*4 FUNCTION JFUN(A,N)
        INTEGER*4 I,A(N),N

          JFUN=0
          DO I=1,N,1
            JFUN=JFUN+A(I)
          END DO

          RETURN
      END FUNCTION JFUN
