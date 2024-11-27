       MODULE KIND_
         INTEGER, PARAMETER :: KIND_VALUE = 8
         REAL(KIND_VALUE), PARAMETER :: M_NAN = Z'FFF8000000000000'
         REAL(KIND_VALUE) :: XX
       END MODULE
       USE  KIND_
       XX = -3.0D+00
       if (abs(XX+3.0D+00)>0.0001)write(6,*) "NG"
       print *,'pass'
       END PROGRAM

