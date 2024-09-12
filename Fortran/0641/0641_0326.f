      PROGRAM MAIN
       REAL EA(100), EB(100), EC(100)
       DATA EB/100*1/ 
       INTEGER IA(100), IB(100), IC(100)
       REAL RR1
       PARAMETER (RR1 = 1. / 2.)
       DATA IB/100*0/ 
       DATA IA/95,99*1/ 
       INTEGER AA11

       J = 0
       K = 0
       DO AA11=1,97,4
        EC(AA11) = 0.
        EC(AA11+1) = 0.
        EC(AA11+2) = 0.
        EC(AA11+3) = 0.
        IC(AA11) = 0
        IC(AA11+1) = 0
        IC(AA11+2) = 0
        IC(AA11+3) = 0
       END DO
       EA(1) = 1.
                                                
       DO I=2,98,3
        EA(I) = I
        EA(I+1) = I + 1
        EA(I+2) = I + 2
        IC(I) = I
        IC(I+1) = I + 1
        IC(I+2) = I + 2
       END DO
                                                
       DO I=2,100
        IF (EA(I) .GT. 50.) THEN
         J = J + 1
         EB(J) = EA(I) * EA(1)
         EC(I) = EA(I)
         IA(I) = IA(1) + 5
         EB(K+1) = IB(I) * 2 + IC(I) + INT (EA(I)) / IA(I)
         K = K + 1
         EA(I) = EB(K) * RR1
         EC(I) = IB(IA(I)) + EA(I)
         NT = IA(1) / 2
         IB(I) = IB(I) + NT + IA(1) * 5 / 3
        END IF
       END DO

       WRITE (6, *) EA, IA
       WRITE (6, *) EB, IB
       WRITE (6, *) EC, IC, K, J
      END
