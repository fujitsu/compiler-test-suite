      PROGRAM MAIN

       REAL*4 TW1(10,10,10), TW2(10,10,10), TW3(10,10,10)
       DATA TW1/1000*1/ 
       DATA TW2/1000*1/ 
       DATA TW3/1000*1/ 
       INTEGER J
       INTEGER N
       PARAMETER (N = 10)
       REAL RR50, RR49, RR48, RR47, RR46, RR45, RR44, RR43, RR42, RR41, 
     X   RR40, RR39, RR38, RR37, RR36, RR35, RR34, RR33, RR32, RR31, 
     X   RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21, 
     X   RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
C$OMP PARALLEL SHARED (TW1,TW2) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7,RR8
C$OMP& ,RR9,RR10,RR11,RR12,RR13,RR14,RR15,RR16,RR17,RR18,RR19,RR20,RR21,
C$OMP& RR22,RR23,RR24,RR25,RR26,RR27,RR28,RR29,RR30,RR31,RR32,RR33,RR34,
C$OMP& RR35,RR36,RR37,RR38,RR39,RR40,RR41,RR42,RR43,RR44,RR45,RR46,RR47,
C$OMP& RR48,RR49,RR50,I,K,J)
C$OMP DO 
       DO I=1,10
        DO K=1,7,4

                                                    
         DO J=1,6,5
          RR1 = TW1(J,K,I) * 2
          RR2 = TW1(J+1,K,I) * 2
          RR3 = TW1(J+2,K,I) * 2
          RR4 = TW1(J+3,K,I) * 2
          RR5 = TW1(J+4,K,I) * 2
          RR6 = TW1(J,K+1,I) * 2
          RR7 = TW1(J+1,K+1,I) * 2
          RR8 = TW1(J+2,K+1,I) * 2
          RR9 = TW1(J+3,K+1,I) * 2
          RR10 = TW1(J+4,K+1,I) * 2
          RR11 = TW1(J,K+2,I) * 2
          RR12 = TW1(J+1,K+2,I) * 2
          RR13 = TW1(J+2,K+2,I) * 2
          RR14 = TW1(J+3,K+2,I) * 2
          RR15 = TW1(J+4,K+2,I) * 2
          RR16 = TW1(J,K+3,I) * 2
          RR17 = TW1(J+1,K+3,I) * 2
          RR18 = TW1(J+2,K+3,I) * 2
          RR19 = TW1(J+3,K+3,I) * 2
          RR20 = TW1(J+4,K+3,I) * 2
          RR21 = TW2(J,K,I) + J
          RR22 = 1 + TW2(J+1,K,I) + J
          RR23 = 2 + TW2(J+2,K,I) + J
          RR24 = 3 + TW2(J+3,K,I) + J
          RR25 = 4 + TW2(J+4,K,I) + J
          RR26 = TW2(J,K+1,I) + J
          RR27 = 1 + TW2(J+1,K+1,I) + J
          RR28 = 2 + TW2(J+2,K+1,I) + J
          RR29 = 3 + TW2(J+3,K+1,I) + J
          RR30 = 4 + TW2(J+4,K+1,I) + J
          RR31 = TW2(J,K+2,I) + J
          RR32 = 1 + TW2(J+1,K+2,I) + J
          RR33 = 2 + TW2(J+2,K+2,I) + J
          RR34 = 3 + TW2(J+3,K+2,I) + J
          RR35 = 4 + TW2(J+4,K+2,I) + J
          RR36 = TW2(J,K+3,I) + J
          RR37 = 1 + TW2(J+1,K+3,I) + J
          RR38 = 2 + TW2(J+2,K+3,I) + J
          RR39 = 3 + TW2(J+3,K+3,I) + J
          RR40 = 4 + TW2(J+4,K+3,I) + J
          TW2(J+4,K+3,I) = RR40
          TW2(J+3,K+3,I) = RR39
          TW2(J+2,K+3,I) = RR38
          TW2(J+1,K+3,I) = RR37
          TW2(J,K+3,I) = RR36
          TW2(J+4,K+2,I) = RR35
          TW2(J+3,K+2,I) = RR34
          TW2(J+2,K+2,I) = RR33
          TW2(J+1,K+2,I) = RR32
          TW2(J,K+2,I) = RR31
          TW2(J+4,K+1,I) = RR30
          TW2(J+3,K+1,I) = RR29
          TW2(J+2,K+1,I) = RR28
          TW2(J+1,K+1,I) = RR27
          TW2(J,K+1,I) = RR26
          TW2(J+4,K,I) = RR25
          TW2(J+3,K,I) = RR24
          TW2(J+2,K,I) = RR23
          TW2(J+1,K,I) = RR22
          TW2(J,K,I) = RR21
          TW1(J+4,K+3,I) = RR20
          TW1(J+3,K+3,I) = RR19
          TW1(J+2,K+3,I) = RR18
          TW1(J+1,K+3,I) = RR17
          TW1(J,K+3,I) = RR16
          TW1(J+4,K+2,I) = RR15
          TW1(J+3,K+2,I) = RR14
          TW1(J+2,K+2,I) = RR13
          TW1(J+1,K+2,I) = RR12
          TW1(J,K+2,I) = RR11
          TW1(J+4,K+1,I) = RR10
          TW1(J+3,K+1,I) = RR9
          TW1(J+2,K+1,I) = RR8
          TW1(J+1,K+1,I) = RR7
          TW1(J,K+1,I) = RR6
          TW1(J+4,K,I) = RR5
          TW1(J+3,K,I) = RR4
          TW1(J+2,K,I) = RR3
          TW1(J+1,K,I) = RR2
          TW1(J,K,I) = RR1
         END DO
        END DO
        DO K=9,10,1

                                                    
         DO J=1,6,5
          RR41 = TW1(J,K,I) * 2
          RR42 = TW1(J+1,K,I) * 2
          RR43 = TW1(J+2,K,I) * 2
          RR44 = TW1(J+3,K,I) * 2
          RR45 = TW1(J+4,K,I) * 2
          RR46 = TW2(J,K,I) + J
          RR47 = 1 + TW2(J+1,K,I) + J
          RR48 = 2 + TW2(J+2,K,I) + J
          RR49 = 3 + TW2(J+3,K,I) + J
          RR50 = 4 + TW2(J+4,K,I) + J
          TW2(J+4,K,I) = RR50
          TW2(J+3,K,I) = RR49
          TW2(J+2,K,I) = RR48
          TW2(J+1,K,I) = RR47
          TW2(J,K,I) = RR46
          TW1(J+4,K,I) = RR45
          TW1(J+3,K,I) = RR44
          TW1(J+2,K,I) = RR43
          TW1(J+1,K,I) = RR42
          TW1(J,K,I) = RR41
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW1, TW2, TW3
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',
     X   /,1H ,(3X,200(5(F17.6,2X)/)))
      END
