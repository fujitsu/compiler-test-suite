      PROGRAM MAIN
      INTEGER*4 CODE/0/
         CALL SUB12(CODE)
         CALL SUB13(CODE)
         CALL SUB14(CODE)
         CALL SUB16(CODE)
         CALL SUB17(CODE)
         CALL SUB18(CODE)
         CALL SUB19(CODE)
         CALL SUB21(CODE)
         IF(CODE .EQ. 0) THEN
            WRITE(6,*) 'OK'
         ELSE
            WRITE(6,*) 'NG'
         ENDIF
      STOP
      END

      SUBROUTINE SUB12(CODE)
        INTEGER*4 ERROR,I,S_DVT1,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_DVT1(20),S_A(20),S_B(20),V_A(20),V_B(20)
        DATA      S_A,S_B/20*1,10*2,10*3/
        DATA      V_A,V_B/20*1,10*2,10*3/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_B(I)
          END DO
          DO I=1,10,1
            S_DVT1(I)=S_A(I)
          END DO
          DO I=1,10,1
            S_A(1+I)=S_DVT1(I)
          END DO
C
          V_A(1:10)=V_B(1:10)
          V_A(2:11)=V_A(1:10)
C
          DO I=1,20,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB12


      SUBROUTINE SUB13(CODE)
        INTEGER*4 ERROR,I,S_A,S_B,V_A,V_B,CODE
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
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB13


      SUBROUTINE SUB14(CODE)
        INTEGER*4 ERROR,I,J,K,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      ERROR/0/
C
          J=10/2
          DO I=1,10,1
            S_A(I)=J
            K=S_A(1)
            S_B(I)=S_A(I)+K
          END DO
C
          J=10/2
          V_A(1:10)=J
          K=V_A(1)
          V_B=V_A+K
C
          DO I=1,10,1
            IF(V_B(I) .NE. S_B(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB14


      SUBROUTINE SUB16(CODE)
        INTEGER*4 ERROR,I,J,K,L,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1,10*2/
        DATA      V_A,V_B/10*1,10*2/
        DATA      ERROR/0/
C
          J=2
          K=1
          L=4
          DO I=1,10,1
            S_A(I)=S_A(I)+J
          END DO
          J=J+1
          K=K+2
          L=L+3
          DO I=1,10,1
            S_B(I)=S_B(I)+L
          END DO
C
          J=2
          K=1
          L=4
          V_A=V_A+J
          J=J+1
          K=K+2
          L=L+3
          V_B=V_B+L
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
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB16

      SUBROUTINE SUB17(CODE)
        INTEGER*4 ERROR,I,S_DVT1,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_DVT1(20),S_A(20),S_B(20),V_A(20),V_B(20)
        DATA      S_A,S_B/10*1,10*2,10*3,10*4/
        DATA      V_A,V_B/10*1,10*2,10*3,10*4/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_DVT1(I)=S_A(I)
          END DO
          DO I=1,10,1
            S_A(1+I)=S_DVT1(I)
          END DO
          DO I=1,10,1
            S_DVT1(I)=S_B(I)
          END DO
          DO I=1,10,1
            S_B(1+I)=S_DVT1(I)
          END DO
C
          V_A(2:11)=V_A(1:10)
          V_B(2:11)=V_B(1:10)
C
          DO I=1,20,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
            IF(V_B(I) .NE. S_B(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB17

      SUBROUTINE SUB18(CODE)
        INTEGER*4 ERROR,I,J,K,S_A,V_A,CODE
        DIMENSION S_A(10),V_A(10)
        DATA      S_A/5*1,5*2/
        DATA      V_A/5*1,5*2/
        DATA      ERROR/0/
C
          J=AINT(1.2)
          K=J+10/2
          DO I=J,K,1
            S_A(I)=S_A((I+1))
          END DO
C
          J=AINT(1.2)
          K=J+10/2
          V_A(J:K)=V_A(J+1:K+1)
C
          DO I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB18

      SUBROUTINE SUB19(CODE)
        INTEGER*4 ERROR,I,S_A,S_B,S_C,V_A,V_B,V_C,CODE
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
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB19

      SUBROUTINE SUB21(CODE)
        INTEGER*4 ERROR,I,J,K,S_DVT1,S_A,V_A,CODE
        DIMENSION S_DVT1(10),S_A(10),V_A(10)
        DATA      S_A/1,2,3,4,5,6,7,8,9,0/
        DATA      V_A/1,2,3,4,5,6,7,8,9,0/
        DATA      ERROR/0/
C
          J=AINT(2.6)
          K=J+5
          DO I=J,K,1
            S_DVT1(I-J+1)=S_A(I)
          END DO
          DO I=J,K,1
            S_A(I+1)=S_DVT1(I-J+1)
          END DO
C
          J=AINT(2.6);K=J+5;V_A(J+1:K+1)=V_A(J:K)
C
          DO I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
          ELSE
            WRITE(6,*) 'NG'
            CODE=CODE+1
          END IF
C
      END SUBROUTINE SUB21
