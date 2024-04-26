      PROGRAM MAIN
      INTEGER*4 CODE/0/
         CALL SUB06(CODE)
         CALL SUB07(CODE)
         CALL SUB08(CODE)
         CALL SUB09(CODE)
         CALL SUB10(CODE)
         IF(CODE .EQ. 0) THEN
            WRITE(6,*) 'OK'
         ELSE
            WRITE(6,*) 'NG'
         ENDIF 
      STOP
      END

      SUBROUTINE SUB06(CODE)
        INTEGER*4 ERROR,I,S_DVT1,S_A,V_A,CODE
        DIMENSION S_DVT1(1000),S_A(1000),V_A(1000)
        DATA      S_A/1,999*0/
        DATA      V_A/1,999*0/
        DATA      ERROR/0/
C
          DO I=1,1000,1
            S_DVT1(I)=S_A(1)
          END DO
          DO I=1,1000,1
            S_A(I)=S_DVT1(I)
          END DO
C
          V_A(1:1000)=V_A(1)
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
      END SUBROUTINE SUB06


      SUBROUTINE SUB07(CODE)
        INTEGER*4 ERROR,I,S_DVT1,S_A,V_A,CODE
        DIMENSION S_DVT1(1000),S_A(1000),V_A(1000)
        DATA      S_A/500*1,500*2/
        DATA      V_A/500*1,500*2/
        DATA      ERROR/0/
C
          DO I=1,500,1
            S_DVT1(I)=S_A(I)
          END DO
          DO I=1,500,1
            S_A(50+I)=S_DVT1(I)
          END DO
C
          V_A(51:550)=V_A(1:500)
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
      END SUBROUTINE SUB07

      SUBROUTINE SUB08(CODE)
        INTEGER*4 ERROR,I,S_DVT1,S_A,V_A,CODE
        DIMENSION S_DVT1(1000),S_A(1000),V_A(1000)
        DATA      S_A/500*1,500*2/
        DATA      V_A/500*1,500*2/
        DATA      ERROR/0/
C
          DO I=1,700,1
            S_DVT1(I)=S_A(I)
          END DO
          DO I=1,700,1
            S_A(300+I)=S_DVT1(I)
          END DO
C
          V_A(301:1000)=V_A(1:700)
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
      END SUBROUTINE SUB08

      SUBROUTINE SUB09(CODE)
        INTEGER*4 ERROR,I,S_DVT1,S_A,V_A,CODE
        DIMENSION S_DVT1(1000),S_A(1000),V_A(1000)
        DATA      S_A/500*1,500*2/
        DATA      V_A/500*1,500*2/
        DATA     ERROR/0/
C
          DO I=1,1000,1
            S_DVT1(I)=S_A(501)
          END DO
          DO I=1,1000,1
            S_A(I)=S_DVT1(I)
          END DO
C
          V_A(1:1000)=V_A(501)
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
      END SUBROUTINE SUB09

      SUBROUTINE SUB10(CODE)
        INTEGER*4 ERROR,I,S_DVT1,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_DVT1(1000),S_A(1000),S_B(1000),V_A(1000),V_B(1000)
        DATA      S_A,S_B/999*0,2,1000*0/
        DATA      V_A,V_B/999*0,2,1000*0/
        DATA      ERROR/0/
C
          DO I=1,1000,1
            S_DVT1(I)=S_A(1)
          END DO
          DO I=1,1000,1
            S_A(I)=S_DVT1(I)
          END DO
          S_A(1)=S_B(1)
C
          V_A(1:1000)=V_A(1)
          V_A(1)=V_B(1)
C
          DO I=1,1000,1
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
      END SUBROUTINE SUB10
