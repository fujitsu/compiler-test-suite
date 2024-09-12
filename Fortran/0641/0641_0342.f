      PROGRAM MAIN

       REAL A1(30), A2(30), A3(30), B1(30)
       DATA A1/30*1/ 
       DATA A2/30*1/ 
       DATA A3/30*1/ 
       DATA B1/30*1/ 
       INTEGER N
       PARAMETER (N = 30)
       INTEGER II4, II3, II2, II1, I1
       REAL RR5, RR4, RR3, RR2, RR1
                                                    
       DO I1=2,26,4
        II2 = 30 - I1
        II3 = 29 - I1
        II4 = 28 - I1
        II1 = 27 - I1
        RR2 = B1(I1) * II2
        RR3 = B1(I1+1) * II3
        RR4 = B1(I1+2) * II4
        RR5 = B1(I1+3) * II1
        RR2 = SQRT (RR2)
        RR3 = SQRT (RR3)
        RR4 = SQRT (RR4)
        RR5 = SQRT (RR5)
        A1(I1+3) = RR5
        A1(I1+2) = RR4
        A1(I1+1) = RR3
        A1(I1) = RR2
       END DO
                                                    
       DO I1=2,26,4
        A2(I1+1) = SIN (A2(I1-1))
        A2(I1+2) = SIN (A2(I1))
        A2(I1+3) = SIN (A2(I1+1))
        A2(I1+4) = SIN (A2(I1+2))
       END DO
       RR1 = COS (A3(30))
       DO K=2,26,4
        A1(K) = RR1
        A1(K+1) = RR1
        A1(K+2) = RR1
        A1(K+3) = RR1
       END DO
       WRITE (6, *) A1, A2, A3
      END
