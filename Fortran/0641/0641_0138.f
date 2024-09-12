      PROGRAM MAIN
       REAL CMT(10,10)
       DATA CMT/100*0/ 
       INTEGER L1
       DO L1=1,6,5
        CMT(L1,5) = -20.
        CMT(L1+1,5) = -20.
        CMT(L1+2,5) = -20.
        CMT(L1+3,5) = -20.
        CMT(L1+4,5) = -20.
        CMT(L1,6) = -30.
        CMT(L1+1,6) = -30.
        CMT(L1+2,6) = -30.
        CMT(L1+3,6) = -30.
        CMT(L1+4,6) = -30.
       END DO

       DO J=5,6
        WRITE (6, *) J
        WRITE (6, *) (CMT(L,J), L=1,10)
       END DO

       STOP 
      END
