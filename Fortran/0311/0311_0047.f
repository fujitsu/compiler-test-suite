      PROGRAM MAIN
      INTEGER*4 CODE/0/
         CALL SUB1(CODE)
         CALL SUB2(CODE)
         CALL SUB3(CODE)
         CALL SUB4(CODE)
         CALL SUB5(CODE)
         IF(CODE .EQ. 0) THEN
            WRITE(6,*) 'OK'
         ELSE
            WRITE(6,*) 'NG'
         ENDIF 
      STOP
      END

      SUBROUTINE SUB1(CODE)
        INTEGER*4 ERROR,I,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1,10*2/
        DATA      V_A,V_B/10*1,10*2/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_A(I)+S_B(I)
          END DO
C
          V_A=V_A+V_B
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
      END SUBROUTINE SUB1


      SUBROUTINE SUB2(CODE)
        INTEGER*4 ERROR,I,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_A(1000),S_B(1000),V_A(1000),V_B(1000)
        DATA      S_A,S_B/1000*1,1000*2/
        DATA      V_A,V_B/1000*1,1000*2/
        DATA      ERROR/0/
C
          DO I=1,1000,1
            S_A(I)=S_A(I)+S_B(I)
          END DO
C
          V_A=V_A+V_B
C
          DO I=1,1000,1
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
      END SUBROUTINE SUB2

      SUBROUTINE SUB3(CODE)
        INTEGER*4 ERROR,I,S_A,V_A,CODE
        DIMENSION S_A(1000),V_A(1000)
        DATA      S_A/999*0,1/
        DATA      V_A/999*0,1/
        DATA      ERROR/0/
C
          DO I=1,1000,1
            S_A(I)=S_A(1000)
          END DO
C
          V_A(1:1000)=V_A(1000)
C
          DO I=1,1000,1
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
      END SUBROUTINE SUB3

      SUBROUTINE SUB4(CODE)
        INTEGER*4 ERROR,I,S_A,V_A,CODE
        DIMENSION S_A(1000),V_A(1000)
        DATA      S_A/500*1,500*2/
        DATA      V_A/500*1,500*2/
        DATA      ERROR/0/
C
          DO I=1,500,1
            S_A(I)=S_A(50+I)
          END DO
C
          V_A(1:500)=V_A(51:550)
C
          DO I=1,1000,1
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
      END SUBROUTINE SUB4

      SUBROUTINE SUB5(CODE)
        INTEGER*4 ERROR,I,S_A,V_A,CODE
        DIMENSION S_A(1000),V_A(1000)
        DATA      S_A/500*1,500*2/
        DATA      V_A/500*1,500*2/
        DATA      ERROR/0/
C
          DO I=1,700,1
            S_A(I)=S_A(300+I)
          END DO
C
          V_A(1:700)=V_A(301:1000)
C
          DO I=1,1000,1
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
      END SUBROUTINE SUB5
