      INTEGER A(10),B(10)/10*10/,C(10)/10*5/,RSLT(10)/10*100/,CODE/0/
      REAL    E(10)/10*10./,F(10)/10*5./
C
      C=E/F
      A=B**C
      DO 10 I=1,10
        IF(A(I) .NE. RSLT(I)) THEN
          CODE=1
          GOTO 20
        ENDIF
 10   CONTINUE

 20   IF(CODE .EQ. 0) THEN
        WRITE (6,*) 'OK'
      ELSE
        WRITE(6,*) 'NG'        
      ENDIF
      STOP
      END
