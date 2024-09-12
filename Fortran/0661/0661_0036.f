      PROGRAM MAIN
      I=10
      SELECT CASE(I)
        CASE(10)
          WRITE(6,*) 'CASE VALUE IS 10'
          GOTO 100
        CASE DEFAULT
          WRITE(6,*) 'CASE VALUE IS NOT 10'
          GOTO 200
      END SELECT
  100 WRITE(6,*) '*****PASS*****'
      GOTO 1000
  200 PRINT *,'NG'
 1000 STOP
      END
