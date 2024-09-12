      PROGRAM MAIN

       INTEGER I(3)
       DATA I/3,9,60/ 
       REAL*4 TW1(3), TW2(3), TW3(3)
       REAL*4 TW4(9), TW5(9), TW6(9)
       REAL*4 TW7(60), TW8(60), TW9(60)
       INTEGER N
       PARAMETER (N = 5)
       DATA TW1/3*1/ 
       DATA TW2/3*1/ 
       DATA TW3/3*1/ 
       DATA TW4/9*1/ 
       DATA TW5/9*1/ 
       DATA TW6/9*1/ 
       DATA TW7/60*1/ 
       DATA TW8/60*1/ 
       DATA TW9/60*1/ 
       INTEGER II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, 
     X   RR1
       II1 = I(2)
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
        RR3 = SQRT (FLOAT (MAX (II1, 5, K)))
        TW1(K) = RR1
        TW2(K) = RR2
        TW3(K) = RR3
       END DO
       WRITE (6, 100) TW1, TW2, TW3
       II2 = I(3)
       DO K=1,I(2)
        RR4 = TW4(K)
        RR5 = TW5(K)
                                                        
        RR4 = RR4 * 2
        RR5 = 1 + RR5
        RR4 = RR4 * 2
        RR5 = 2 + RR5
        RR4 = RR4 * 2
        RR5 = 3 + RR5
        RR4 = RR4 * 2
        RR5 = 4 + RR5
        RR4 = RR4 * 2
        RR5 = 5 + RR5
        RR6 = SQRT (FLOAT (MAX (II2, 5, K)))
        TW4(K) = RR4
        TW5(K) = RR5
        TW6(K) = RR6
       END DO
       WRITE (6, 100) TW4, TW5, TW6
       II4 = I(3)
       II3 = I(1)
C$OMP PARALLEL IF (II4 .GT. 20) SHARED (II4,TW9,II3,TW8,TW7) PRIVATE (K)
C$OMP DO 
       DO K=1,II4
        TW7(K) = TW7(K) * 2
        TW8(K) = 1 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II3, 1, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 2 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II3, 2, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 3 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II3, 3, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 4 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II3, 4, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 5 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II3, 5, K)))
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW7, TW8, TW9
       II5 = I(2)
       DO K=1,I(1)
        RR7 = TW1(K)
        RR8 = TW2(K)
                                                     
        RR7 = RR7 * 2
        RR8 = 1 + RR8
        RR7 = RR7 * 2
        RR8 = 2 + RR8
        RR7 = RR7 * 2
        RR8 = 3 + RR8
        RR7 = RR7 * 2
        RR8 = 4 + RR8
        RR7 = RR7 * 2
        RR8 = 5 + RR8
        RR9 = SQRT (FLOAT (MAX (II5, 5, K)))
        TW1(K) = RR7
        TW2(K) = RR8
        TW3(K) = RR9
       END DO
       WRITE (6, 100) TW1, TW2, TW3
       II6 = I(2)
       DO K=1,I(1)
        RR10 = TW1(K)
        RR11 = TW2(K)
                                                    
        RR10 = RR10 * 2
        RR11 = 1 + RR11
        RR10 = RR10 * 2
        RR11 = 2 + RR11
        RR10 = RR10 * 2
        RR11 = 3 + RR11
        RR10 = RR10 * 2
        RR11 = 4 + RR11
        RR10 = RR10 * 2
        RR11 = 5 + RR11
        RR12 = SQRT (FLOAT (MAX (II6, 5, K)))
        TW1(K) = RR10
        TW2(K) = RR11
        TW3(K) = RR12
       END DO
       WRITE (6, 100) TW1, TW2, TW3
       II8 = I(3)
       II7 = I(1)
C$OMP PARALLEL IF (II8 .GT. 20) SHARED (II8,TW9,II7,TW8,TW7) PRIVATE (K)
C$OMP DO 
       DO K=1,II8
        TW7(K) = TW7(K) * 2
        TW8(K) = 1 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II7, 1, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 2 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II7, 2, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 3 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II7, 3, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 4 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II7, 4, K)))
        TW7(K) = TW7(K) * 2
        TW8(K) = 5 + TW8(K)
        TW9(K) = SQRT (FLOAT (MAX (II7, 5, K)))
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW7, TW8, TW9
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',/
     X   ,1H ,(3X,20(5(F17.6,2X)/)))
      END
