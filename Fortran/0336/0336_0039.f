      PROGRAM MAIN
        INTEGER*4 IFUN,V_A(10),V_B(10)
        DATA V_A,V_B/1,2,3,4,5,6,7,8,9,0,0,9,8,7,6,5,4,3,2,1/

        V_A=IFUN( (/(1,ii=1,10)/) )
        V_B=IFUN( (/(1,ii=1,10)/) )
        IF (V_B(1) .NE. 1) THEN
          print *,'*** NG ***'
        ENDIF
          print *,'*** OK ***'
        STOP
      END PROGRAM MAIN
      INTEGER*4 FUNCTION IFUN(A)
        INTEGER*4 A(10)
          IFUN=A(1)
          RETURN
      END FUNCTION IFUN
