      PROGRAM MAIN
        INTEGER*4 ERROR,V_A,V_B
        DIMENSION V_A(10),V_B(10)
        DATA      V_A,V_B/10*1,10*2/
        DATA      ERROR/0/
C
          CALL SUB_E(ERROR,V_A,V_B,V_A+V_B,V_A-V_B)
C
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
          END IF

          STOP
      END PROGRAM MAIN


      SUBROUTINE SUB_E(ERROR,A,B,ADDDATA,SUBDATA)
        INTEGER*4 ERROR,I,A,B,ADDDATA,SUBDATA
        DIMENSION A(10),B(10),ADDDATA(10),SUBDATA(10)
C
        DO I=1,10,1
          IF( (ADDDATA(I)+SUBDATA(I))/2 .NE. A(I)) THEN
            ERROR=ERROR+1
          END IF
          IF(-(SUBDATA(I)-ADDDATA(I))/2 .NE. B(I)) THEN
            ERROR=ERROR+1
          END IF
        END DO

        RETURN
      END SUBROUTINE SUB_E
