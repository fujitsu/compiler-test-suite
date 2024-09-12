      PROGRAM MAIN

       REAL*4 TW1(11), TW2(11,11), TW3(11,11,11)
       DATA TW1/11*1/ 
       DATA TW2/121*1/ 
       DATA TW3/1331*1/ 
       INTEGER J, L
       INTEGER N
       PARAMETER (N = 10)
       INTEGER II2, II1
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DO K=1,7,4
        RR3 = TW1(K)
        RR4 = TW1(K+1)
        RR5 = TW1(K+2)
        RR6 = TW1(K+3)
        RR7 = TW2(K+1,K)
        RR8 = TW2(K+2,K+1)
        RR9 = TW2(K+3,K+2)
        RR10 = TW2(K+4,K+3)

                                                     
        DO J=1,6,5
         RR3 = RR3 * 2 + K
         RR4 = 1 + RR4 * 2 + K
         RR5 = 2 + RR5 * 2 + K
         RR6 = 3 + RR6 * 2 + K
         RR7 = RR7 + J
         RR8 = RR8 + J
         RR9 = RR9 + J
         RR10 = RR10 + J
         RR3 = RR3 * 2 + K
         RR4 = 1 + RR4 * 2 + K
         RR5 = 2 + RR5 * 2 + K
         RR6 = 3 + RR6 * 2 + K
         RR7 = 1 + RR7 + J
         RR8 = 1 + RR8 + J
         RR9 = 1 + RR9 + J
         RR10 = 1 + RR10 + J
         RR3 = RR3 * 2 + K
         RR4 = 1 + RR4 * 2 + K
         RR5 = 2 + RR5 * 2 + K
         RR6 = 3 + RR6 * 2 + K
         RR7 = 2 + RR7 + J
         RR8 = 2 + RR8 + J
         RR9 = 2 + RR9 + J
         RR10 = 2 + RR10 + J
         RR3 = RR3 * 2 + K
         RR4 = 1 + RR4 * 2 + K
         RR5 = 2 + RR5 * 2 + K
         RR6 = 3 + RR6 * 2 + K
         RR7 = 3 + RR7 + J
         RR8 = 3 + RR8 + J
         RR9 = 3 + RR9 + J
         RR10 = 3 + RR10 + J
         RR3 = RR3 * 2 + K
         RR4 = 1 + RR4 * 2 + K
         RR5 = 2 + RR5 * 2 + K
         RR6 = 3 + RR6 * 2 + K
         RR7 = 4 + RR7 + J
         RR8 = 4 + RR8 + J
         RR9 = 4 + RR9 + J
         RR10 = 4 + RR10 + J
        END DO
        TW1(K) = RR3
        TW1(K+1) = RR4
        TW1(K+2) = RR5
        TW1(K+3) = RR6
        TW2(K+1,K) = RR7
        TW2(K+2,K+1) = RR8
        TW2(K+3,K+2) = RR9
        TW2(K+4,K+3) = RR10
       END DO

                                                     
       DO J=1,6,5
        RR2 = TW1(9) * 2
        RR1 = TW1(10) * 2
        II2 = 9
        II1 = 10
        TW1(9) = RR2 + II2
        TW1(10) = RR1 + II1
        TW2(10,9) = TW2(10,9) + J
        TW2(11,10) = TW2(11,10) + J
        RR2 = TW1(9) * 2
        RR1 = TW1(10) * 2
        II2 = 9
        II1 = 10
        TW1(9) = RR2 + II2
        TW1(10) = RR1 + II1
        TW2(10,9) = 1 + TW2(10,9) + J
        TW2(11,10) = 1 + TW2(11,10) + J
        RR2 = TW1(9) * 2
        RR1 = TW1(10) * 2
        II2 = 9
        II1 = 10
        TW1(9) = RR2 + II2
        TW1(10) = RR1 + II1
        TW2(10,9) = 2 + TW2(10,9) + J
        TW2(11,10) = 2 + TW2(11,10) + J
        RR2 = TW1(9) * 2
        RR1 = TW1(10) * 2
        II2 = 9
        II1 = 10
        TW1(9) = RR2 + II2
        TW1(10) = RR1 + II1
        TW2(10,9) = 3 + TW2(10,9) + J
        TW2(11,10) = 3 + TW2(11,10) + J
        RR2 = TW1(9) * 2
        RR1 = TW1(10) * 2
        II2 = 9
        II1 = 10
        TW1(9) = RR2 + II2
        TW1(10) = RR1 + II1
        TW2(10,9) = 4 + TW2(10,9) + J
        TW2(11,10) = 4 + TW2(11,10) + J
       END DO
       WRITE (6, 100) TW1, TW2, TW3
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',
     X   /,1H ,(3X,200(5(F17.6,2X)/)))
      END
