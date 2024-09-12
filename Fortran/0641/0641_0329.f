      PROGRAM MAIN
       REAL*4 TW1(100), TW2(100), TW3(100)
       DATA TW1/100*1/ 
       DATA TW2/100*1/ 
       DATA TW3/100*1/ 
       INTEGER J
       INTEGER N
       PARAMETER (N = 100)
       INTEGER II4, II3, II2, II1
       REAL RR4, RR3, RR2, RR1
                                                                        
C$OMP PARALLEL SHARED (TW1,TW2,TW3) PRIVATE (RR1,II1,RR2,RR3,RR4,II2,II3
C$OMP& ,II4,I)
C$OMP DO 
       DO I=1,97,4
        TW1(I) = TW1(I) * 2
        TW1(I+1) = TW1(I+1) * 2
        TW1(I+2) = TW1(I+2) * 2
        TW1(I+3) = TW1(I+3) * 2
        RR2 = 1 + TW2(I)
        RR3 = 1 + TW2(I+1)
        RR4 = 1 + TW2(I+2)
        RR1 = 1 + TW2(I+3)
        II2 = I - 1
        II3 = I
        II4 = I + 1
        II1 = I + 2
        TW2(I) = RR2 + II2
        TW2(I+1) = RR3 + II3
        TW2(I+2) = RR4 + II4
        TW2(I+3) = RR1 + II1
        II2 = I
        II3 = I + 1
        II4 = I + 2
        II1 = I + 3
        RR2 = FLOAT (II2)
        RR3 = FLOAT (II3)
        RR4 = FLOAT (II4)
        RR1 = FLOAT (II1)
        TW3(I) = SQRT (RR2)
        TW3(I+1) = SQRT (RR3)
        TW3(I+2) = SQRT (RR4)
        TW3(I+3) = SQRT (RR1)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW1, TW2, TW3
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',/
     X   ,1H ,(3X,20(5(F17.6,2X)/)))
      END
