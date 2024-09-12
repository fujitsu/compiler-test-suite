      PROGRAM MAIN

       INTEGER I(3)
       DATA I/3,9,60/ 
       REAL*4 TW1(3), TW2(3)
       REAL*4 TW4(9), TW5(9)
       REAL*4 TW7(60), TW8(60)
       INTEGER N
       PARAMETER (N = 5)
       DATA TW1/3*1/ 
       DATA TW2/3*1/ 
       DATA TW4/9*1/ 
       DATA TW5/9*1/ 
       DATA TW7/60*1/ 
       DATA TW8/60*1/ 
       INTEGER II2, II1
       REAL RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6
     X   , RR5, RR4, RR3, RR2, RR1

       DO K=1,I(1)
        RR1 = TW1(K)
        RR2 = TW2(K)

        RR1 = RR1 * 2
        RR2 = 1 + RR2
        RR1 = RR1 * 2
        RR2 = 2 + RR2
        RR1 = RR1 * 2
        RR2 = 3 + RR2
        RR1 = RR1 * 2
        RR2 = 4 + RR2
        RR1 = RR1 * 2
        RR2 = 5 + RR2
        TW1(K) = RR1
        TW2(K) = RR2
       END DO
       WRITE (6, 100) TW1, TW2, 0.
       DO K=1,I(2)-3,4
        RR3 = TW4(K)
        RR4 = TW4(K+1)
        RR5 = TW4(K+2)
        RR6 = TW4(K+3)
        RR7 = TW5(K)
        RR8 = TW5(K+1)
        RR9 = TW5(K+2)
        RR10 = TW5(K+3)
                                                        
        RR3 = RR3 * 2
        RR4 = RR4 * 2
        RR5 = RR5 * 2
        RR6 = RR6 * 2
        RR7 = 1 + RR7
        RR8 = 1 + RR8
        RR9 = 1 + RR9
        RR10 = 1 + RR10
        RR3 = RR3 * 2
        RR4 = RR4 * 2
        RR5 = RR5 * 2
        RR6 = RR6 * 2
        RR7 = 2 + RR7
        RR8 = 2 + RR8
        RR9 = 2 + RR9
        RR10 = 2 + RR10
        RR3 = RR3 * 2
        RR4 = RR4 * 2
        RR5 = RR5 * 2
        RR6 = RR6 * 2
        RR7 = 3 + RR7
        RR8 = 3 + RR8
        RR9 = 3 + RR9
        RR10 = 3 + RR10
        RR3 = RR3 * 2
        RR4 = RR4 * 2
        RR5 = RR5 * 2
        RR6 = RR6 * 2
        RR7 = 4 + RR7
        RR8 = 4 + RR8
        RR9 = 4 + RR9
        RR10 = 4 + RR10
        RR3 = RR3 * 2
        RR4 = RR4 * 2
        RR5 = RR5 * 2
        RR6 = RR6 * 2
        RR7 = 5 + RR7
        RR8 = 5 + RR8
        RR9 = 5 + RR9
        RR10 = 5 + RR10
        TW4(K) = RR3
        TW4(K+1) = RR4
        TW4(K+2) = RR5
        TW4(K+3) = RR6
        TW5(K) = RR7
        TW5(K+1) = RR8
        TW5(K+2) = RR9
        TW5(K+3) = RR10
       END DO
       DO K=K,I(2),1
        RR11 = TW4(K)
        RR12 = TW5(K)
        RR11 = RR11 * 2
        RR12 = 1 + RR12
        RR11 = RR11 * 2
        RR12 = 2 + RR12
        RR11 = RR11 * 2
        RR12 = 3 + RR12
        RR11 = RR11 * 2
        RR12 = 4 + RR12
        RR11 = RR11 * 2
        RR12 = 5 + RR12
        TW4(K) = RR11
        TW5(K) = RR12
       END DO
       WRITE (6, 100) TW4, TW5, 0.
       II1 = I(3)
C$OMP PARALLEL IF (II1 .GT. 35) SHARED (II1,TW8,TW7) PRIVATE (K)
C$OMP DO 
       DO K=1,II1
                                                        
        TW7(K) = TW7(K) * 2
        TW8(K) = 1 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 2 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 3 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 4 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 5 + TW8(K)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW7, TW8, 0.
       DO K=1,I(1)
        RR13 = TW1(K)
        RR14 = TW2(K)
                                                     
        RR13 = RR13 * 2
        RR14 = 1 + RR14
        RR13 = RR13 * 2
        RR14 = 2 + RR14
        RR13 = RR13 * 2
        RR14 = 3 + RR14
        RR13 = RR13 * 2
        RR14 = 4 + RR14
        RR13 = RR13 * 2
        RR14 = 5 + RR14
        TW1(K) = RR13
        TW2(K) = RR14
       END DO
       WRITE (6, 100) TW1, TW2, 0.
       DO K=1,I(1)
        RR15 = TW1(K)
        RR16 = TW2(K)
                                                    
        RR15 = RR15 * 2
        RR16 = 1 + RR16
        RR15 = RR15 * 2
        RR16 = 2 + RR16
        RR15 = RR15 * 2
        RR16 = 3 + RR16
        RR15 = RR15 * 2
        RR16 = 4 + RR16
        RR15 = RR15 * 2
        RR16 = 5 + RR16
        TW1(K) = RR15
        TW2(K) = RR16
       END DO
       WRITE (6, 100) TW1, TW2, 0.
       II2 = I(3)
C$OMP PARALLEL IF (II2 .GT. 35) SHARED (II2,TW8,TW7) PRIVATE (K)
C$OMP DO 
       DO K=1,II2
                                                    
        TW7(K) = TW7(K) * 2
        TW8(K) = 1 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 2 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 3 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 4 + TW8(K)
        TW7(K) = TW7(K) * 2
        TW8(K) = 5 + TW8(K)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW7, TW8, 0.
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',/
     X   ,1H ,(3X,20(5(F17.6,2X)/)))
      END
