      REAL*4 RC(10,10,10)
      DATA RC/1000*1./ 
      REAL RR55, RR54, RR53, RR52, RR51, RR50, RR49, RR48, RR47, RR46, 
     X  RR45, RR44, RR43, RR42, RR41, RR40, RR39, RR38, RR37, RR36, RR35
     X  , RR34, RR33, RR32, RR31, RR30, RR29, RR28, RR27, RR26, RR25, 
     X  RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16
      REAL RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, 
     X  RR4, RR3, RR2, RR1

C$OMP PARALLEL SHARED (RC) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7,RR8,RR9,
C$OMP& RR10,RR11,RR12,RR13,RR14,RR15,RR16,RR17,RR18,RR19,RR20,RR21,RR22,
C$OMP& RR23,RR24,RR25,RR26,RR27,RR28,RR29,RR30,I1,I2,I3)
C$OMP DO 
      DO I1=1,10
       DO I2=1,7,4
        DO I3=1,6,5
         RR6 = RC(I3,I2,I1) + I2
         RR7 = RC(I3+1,I2,I1) + I2
         RR8 = RC(I3+2,I2,I1) + I2
         RR9 = RC(I3+3,I2,I1) + I2
         RR10 = RC(I3+4,I2,I1) + I2
         RR2 = 1 + RC(I3,I2+1,I1)
         RR3 = 1 + RC(I3+1,I2+1,I1)
         RR4 = 1 + RC(I3+2,I2+1,I1)
         RR5 = 1 + RC(I3+3,I2+1,I1)
         RR1 = 1 + RC(I3+4,I2+1,I1)
         RR11 = RR2 + I2
         RR12 = RR3 + I2
         RR13 = RR4 + I2
         RR14 = RR5 + I2
         RR15 = RR1 + I2
         RC(I3,I2+1,I1) = RR11
         RR2 = 2 + RC(I3,I2+2,I1)
         RC(I3+1,I2+1,I1) = RR12
         RR3 = 2 + RC(I3+1,I2+2,I1)
         RC(I3+2,I2+1,I1) = RR13
         RR4 = 2 + RC(I3+2,I2+2,I1)
         RC(I3+3,I2+1,I1) = RR14
         RR5 = 2 + RC(I3+3,I2+2,I1)
         RC(I3+4,I2+1,I1) = RR15
         RR1 = 2 + RC(I3+4,I2+2,I1)
         RR16 = RR2 + I2
         RR17 = RR3 + I2
         RR18 = RR4 + I2
         RR19 = RR5 + I2
         RR20 = RR1 + I2
         RC(I3,I2+2,I1) = RR16
         RR2 = 3 + RC(I3,I2+3,I1)
         RC(I3+1,I2+2,I1) = RR17
         RR3 = 3 + RC(I3+1,I2+3,I1)
         RC(I3+2,I2+2,I1) = RR18
         RR4 = 3 + RC(I3+2,I2+3,I1)
         RC(I3+3,I2+2,I1) = RR19
         RR5 = 3 + RC(I3+3,I2+3,I1)
         RC(I3+4,I2+2,I1) = RR20
         RR1 = 3 + RC(I3+4,I2+3,I1)
         RR21 = RR2 + I2
         RR22 = RR3 + I2
         RR23 = RR4 + I2
         RR24 = RR5 + I2
         RR25 = RR1 + I2
         RC(I3+4,I2+3,I1) = RR25
         RC(I3+3,I2+3,I1) = RR24
         RC(I3+2,I2+3,I1) = RR23
         RC(I3+1,I2+3,I1) = RR22
         RC(I3,I2+3,I1) = RR21
         RC(I3+4,I2,I1) = RR10
         RC(I3+3,I2,I1) = RR9
         RC(I3+2,I2,I1) = RR8
         RC(I3+1,I2,I1) = RR7
         RC(I3,I2,I1) = RR6
        END DO
       END DO
       DO I2=9,10,1
        DO I3=1,6,5
         RR26 = RC(I3,I2,I1) + I2
         RR27 = RC(I3+1,I2,I1) + I2
         RR28 = RC(I3+2,I2,I1) + I2
         RR29 = RC(I3+3,I2,I1) + I2
         RR30 = RC(I3+4,I2,I1) + I2
         RC(I3+4,I2,I1) = RR30
         RC(I3+3,I2,I1) = RR29
         RC(I3+2,I2,I1) = RR28
         RC(I3+1,I2,I1) = RR27
         RC(I3,I2,I1) = RR26
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      WRITE (6, *) 'RC=', RC

C$OMP PARALLEL SHARED (RC) PRIVATE (RR31,RR32,RR33,RR34,RR35,RR36,RR37,
C$OMP& RR38,RR39,RR40,RR41,RR42,RR43,RR44,RR45,RR46,RR47,RR48,RR49,RR50,
C$OMP& RR51,RR52,RR53,RR54,RR55,I1,I2,I3)
C$OMP DO 
      DO I1=1,10
       DO I2=1,7,4
        DO I3=1,6,5
         RR31 = 2. + RC(I3,I2,I1)
         RR32 = 2. + RC(I3+1,I2,I1)
         RR33 = 2. + RC(I3+2,I2,I1)
         RR34 = 2. + RC(I3+3,I2,I1)
         RR35 = 2. + RC(I3+4,I2,I1)
         RR36 = 2. + RC(I3,I2+1,I1)
         RR37 = 2. + RC(I3+1,I2+1,I1)
         RR38 = 2. + RC(I3+2,I2+1,I1)
         RR39 = 2. + RC(I3+3,I2+1,I1)
         RR40 = 2. + RC(I3+4,I2+1,I1)
         RR41 = 2. + RC(I3,I2+2,I1)
         RR42 = 2. + RC(I3+1,I2+2,I1)
         RR43 = 2. + RC(I3+2,I2+2,I1)
         RR44 = 2. + RC(I3+3,I2+2,I1)
         RR45 = 2. + RC(I3+4,I2+2,I1)
         RR46 = 2. + RC(I3,I2+3,I1)
         RR47 = 2. + RC(I3+1,I2+3,I1)
         RR48 = 2. + RC(I3+2,I2+3,I1)
         RR49 = 2. + RC(I3+3,I2+3,I1)
         RR50 = 2. + RC(I3+4,I2+3,I1)
         RC(I3+4,I2+3,I1) = RR50
         RC(I3+3,I2+3,I1) = RR49
         RC(I3+2,I2+3,I1) = RR48
         RC(I3+1,I2+3,I1) = RR47
         RC(I3,I2+3,I1) = RR46
         RC(I3+4,I2+2,I1) = RR45
         RC(I3+3,I2+2,I1) = RR44
         RC(I3+2,I2+2,I1) = RR43
         RC(I3+1,I2+2,I1) = RR42
         RC(I3,I2+2,I1) = RR41
         RC(I3+4,I2+1,I1) = RR40
         RC(I3+3,I2+1,I1) = RR39
         RC(I3+2,I2+1,I1) = RR38
         RC(I3+1,I2+1,I1) = RR37
         RC(I3,I2+1,I1) = RR36
         RC(I3+4,I2,I1) = RR35
         RC(I3+3,I2,I1) = RR34
         RC(I3+2,I2,I1) = RR33
         RC(I3+1,I2,I1) = RR32
         RC(I3,I2,I1) = RR31
        END DO
       END DO
       DO I2=9,10,1
        DO I3=1,6,5
         RR51 = 2. + RC(I3,I2,I1)
         RR52 = 2. + RC(I3+1,I2,I1)
         RR53 = 2. + RC(I3+2,I2,I1)
         RR54 = 2. + RC(I3+3,I2,I1)
         RR55 = 2. + RC(I3+4,I2,I1)
         RC(I3+4,I2,I1) = RR55
         RC(I3+3,I2,I1) = RR54
         RC(I3+2,I2,I1) = RR53
         RC(I3+1,I2,I1) = RR52
         RC(I3,I2,I1) = RR51
        END DO
       END DO
      END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      WRITE (6, *) 'RC=', RC
      STOP 
      END
