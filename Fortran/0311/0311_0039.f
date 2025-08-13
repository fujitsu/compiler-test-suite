      PROGRAM MAIN
      INTEGER*4 ERROR,I,J,A,B,C,IFUN
      DIMENSION A(1000),B(1000),C(1000)
      DATA   B,C/1000*1,1000*2/
      DATA ERROR/0/

      OPEN(1)
      DO 20 I=1,10,1
         BACKSPACE 9
         WRITE(9,*) I

         BACKSPACE 9
         READ (9,*) J
         READ (9,*,END=20) A(IFUN(B+C))
         WRITE(6,*) 'ERROR      ',J
         ERROR=ERROR+1
 20   CONTINUE

      IF(ERROR .EQ. 0) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG'
         WRITE(6,*) ' ERROR COUNT = ',ERROR
      END IF

      STOP
      END PROGRAM MAIN

      INTEGER*4 FUNCTION IFUN(A)
      INTEGER*4 A(100)

      IFUN=0
      IF(A(1) .EQ. 3) IFUN=1

      RETURN
      END FUNCTION IFUN
