      PROGRAM MAIN
      INTEGER CODE/0/
         CALL SUB01(CODE)
         CALL SUB02(CODE)
         CALL SUB05(CODE)
         CALL SUB06(CODE)
         CALL SUB07(CODE)
      IF(CODE .EQ. 0) THEN
        WRITE(6,*) 'OK'
      ELSE
        WRITE(6,*) 'NG'
      ENDIF
      STOP
      END

      SUBROUTINE SUB01(CODE)
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
          END IF

      CODE=CODE+ERROR
      END SUBROUTINE SUB01

      SUBROUTINE SUB02(CODE)
        INTEGER*4 ERROR,I,S_A,S_B,S_C,V_A,V_B,V_C,CODE
        DIMENSION S_A(10),S_B(10),S_C(10),V_A(10),V_B(10),V_C(10)
        DATA      S_A,S_B,S_C/10*1,10*2,10*3/
        DATA      V_A,V_B,V_C/10*1,10*2,10*3/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_A(I)+S_B(I)
            S_B(I)=S_B(I)+S_C(I)
          END DO
C
          V_A=V_A+V_B
          V_B=V_B+V_C
C
          DO I=1,10,1
             IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
            IF(V_B(I) .NE. S_B(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF (ERROR .EQ. 0) THEN
          ELSE
            WRITE(6,*) 'NG'
          END IF
C
      CODE=CODE+ERROR
      END SUBROUTINE SUB02

      SUBROUTINE SUB05(CODE)
        INTEGER*4 ERROR,I,CODE
        REAL*4    S_A,S_B,V_A,V_B
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*1.0,10*2.0/
        DATA      V_A,V_B/10*1.0,10*2.0/
        DATA      ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_A(I)+SIN(S_A(I)+S_B(I))
            S_B(I)=S_B(I)+COS(S_A(I)-S_B(I))
          END DO
C
          V_A=V_A+SIN(V_A+V_B)
          V_B=V_B+COS(V_A-V_B)
C
          DO I=1,10,1
            IF(ABS(V_A(I) - S_A(I))>0.1E-5) THEN
              ERROR=ERROR+1
            END IF
            IF(ABS(V_B(I) - S_B(I))>0.1E-5) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
          ELSE
            WRITE(6,*) 'NG'
          END IF
C
      CODE=CODE+ERROR
      END SUBROUTINE SUB05

      SUBROUTINE SUB06(CODE)
        INTEGER*4 V_A,V_B,ERROR/1/,CODE
        DIMENSION V_A(10),V_B(10)
        DATA      V_A,V_B/10*1,10*2/

        WRITE(1,100,ERR=10) V_A,V_B,V_A+V_B,V_A-V_B
        CALL CHECK(ERROR)

 10     IF(ERROR .EQ. 0) THEN
        ELSE
           WRITE(6,*) 'NG'
        ENDIF
        
 100    FORMAT(1H ,'A  =(',10I3,')'/,1H ,'B  =(',10I3,')'/
     +       ,1H ,'A+B=(',10I3,')'/,1H ,'A-B=(',10I3,')')
        CODE=CODE+ERROR
        RETURN
        END SUBROUTINE SUB06

      SUBROUTINE CHECK(ERROR)
      CHARACTER*40 CH40_A,CH40_B,CH40_AB
      CHARACTER*40 T_A,T_B,T_AB
      INTEGER*4 ERROR
      DATA T_A /' A  =(  1  1  1  1  1  1  1  1  1  1)'/
      DATA T_B /' B  =(  2  2  2  2  2  2  2  2  2  2)'/
      DATA T_AB/' A+B=(  3  3  3  3  3  3  3  3  3  3)'/

      REWIND 1
      READ(1,'(A)',ERR=20) CH40_A
      READ(1,'(A)',ERR=20) CH40_B
      READ(1,'(A)',ERR=20) CH40_AB
      IF(CH40_A /= T_A .OR. CH40_B /= T_B .OR. CH40_AB /= T_AB) THEN
         WRITE(6,FMT='(1H ,"TRUE VALUE:"/,3(A/))')T_A   ,T_B   ,T_AB
         WRITE(6,FMT='(1H ,"CALC VALUE:"/,3(A/))')CH40_A,CH40_B,CH40_AB
         ERROR=1
      ELSE
         ERROR=0
      ENDIF
 20   RETURN
      END

      SUBROUTINE SUB07(CODE)
        INTEGER*4 ERROR,I,J,S_A,S_B,V_A,V_B,CODE
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10)
        DATA      S_A,S_B/10*0,10*0/
        DATA      V_A,V_B/10*0,10*0/
        DATA      ERROR/0/
C
          DO J=1,2,1
            IF(J .EQ. 1) THEN
              DO I=1,10,1
                S_A(I)=S_A(I)+1
              END DO
            ELSE
              DO I=1,10,1
                S_B(I)=S_B(I)+2
              END DO
            END IF
          END DO
C
          DO J=1,2,1
            IF(J .EQ. 1) THEN
              V_A=V_A+1
            ELSE
              V_B=V_B+2
            END IF
          END DO
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
          END IF
C
      CODE=CODE+ERROR
      END SUBROUTINE SUB07
