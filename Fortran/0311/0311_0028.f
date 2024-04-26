      PROGRAM MAIN
        INTEGER*4 ERROR,I,J,K,L,C1,IFUN,JFUN,RESULT
        COMPLEX*8 S_A,S_B,V_A,V_B
        DIMENSIONS_A(10),S_B(10),V_A(10),V_B(10)
        DATA S_A,S_B/10*(1.0,2.0),10*(2.0,1.0)/
        DATA V_A,V_B/10*(1.0,2.0),10*(2.0,1.0)/
        DATA ERROR/0/
C
          I=COS(0.0)
          K=AINT(I+9.8)
          J=(I+K-1)/2
          L=10-J+1
          DO C1=1,10,1
            S_A(C1)=S_A(C1)+S_B(C1)
          END DO
          DO C1=1,5,1
            S_A(C1)=S_A(C1+1)+S_B(C1+2)
          END DO
          DO C1=I,J,1
            S_B(C1)=S_B(C1+1)+S_A(C1+2)
          END DO
          DO C1=I,J,1
            S_A(C1)=S_A(C1-I+J+1)+S_B(K-C1+I)
          END DO
          S_A(I  )=1+S_A(J+1)
          S_A(I+1)=2+S_A(J+2)
          S_A(I+2)=3+S_A(J+3)
          S_A(I+3)=4+S_A(J+4)
          S_A(I+4)=5+S_A(J+5)
          S_B(I  )=S_B(J+1)+1
          S_B(I+1)=S_B(J+2)+2
          S_B(I+2)=S_B(J+3)+3
          S_B(I+3)=S_B(J+4)+4
          S_B(I+4)=S_B(J+5)+5
          RESULT=IFUN(S_A+S_B)
          DO C1=I,J,1
            S_A(C1)=RESULT+S_A(C1-I+J+1)
          END DO
          RESULT=IFUN(S_A+S_B)
          DO C1=I,J,1
            S_B(C1)=S_B(C1-I+J)+RESULT
          END DO
          RESULT=JFUN(S_A+S_B)
          DO C1=I,J,1
            S_A(C1)=S_A(C1-I+RESULT)
          END DO
C
          I=COS(0.0)
          K=AINT(I+9.8)
          J=(I+K-1)/2
          L=10-J+1
          V_A=V_A+V_B
          V_A(1:5)=V_A(2:6)     +V_B(3:7)
          V_B(I:J)=V_B(I+1:J+1) +V_A(I+2:J+2)
          V_A(I:J)=V_A(J+1:K)   +V_B(K:L:-1)

	  V_A(I  )=1+V_A(J+1)
	  V_A(I+1)=2+V_A(J+1+1)
	  V_A(I+2)=3+V_A(J+1+2)
	  V_A(I+3)=4+V_A(J+1+3)
	  V_A(I+4)=5+V_A(J+1+4)

	  V_B(I  )=V_B(J+1  )+1
	  V_B(I+1)=V_B(J+1+1)+2
	  V_B(I+2)=V_B(J+1+2)+3
	  V_B(I+3)=V_B(J+1+3)+4
	  V_B(I+4)=V_B(J+1+4)+5
          V_A(I:J)=IFUN(V_A+V_B)+V_A(J+1:K)
          V_B(I:J)=V_B(J:K-1)   +IFUN(V_A+V_B)
          V_A(I:J)=V_A(JFUN(V_A+V_B):JFUN(V_A+V_B)+4)
C
          DO C1=1,10,1
            IF(V_A(C1) .NE. S_A(C1)) THEN
              ERROR=ERROR+1
            ENDIF
            IF(V_B(C1) .NE. S_B(C1)) THEN
              ERROR=ERROR+1
            ENDIF
          END DO
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
          ENDIF
C
          STOP
      END PROGRAM MAIN
C
C
      INTEGER*4 FUNCTION IFUN(A)
        INTEGER*4 I
        COMPLEX*8 A(10)
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
        INTEGER*4 I
        COMPLEX*8 A(10)
C
          JFUN=0
          DO I=1,10,1
            JFUN=JFUN+A(I)
          END DO
          JFUN=MOD(JFUN,2)+1
C
          RETURN
      END FUNCTION JFUN
