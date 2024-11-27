     PROGRAM P
        INTEGER, TARGET :: T
        T=-1
        CALL SUB(FPTR(),T)
        if (T/=2)print *,'error'
        print *,'pass'
      CONTAINS
        FUNCTION FPTR()
          INTEGER, POINTER :: FPTR

          FPTR => T
        END FUNCTION FPTR
        SUBROUTINE SUB(IO,IP)
          INTEGER :: IO
          INTEGER,target :: IP
          IP=IO+3
        END SUBROUTINE SUB
      END PROGRAM P
