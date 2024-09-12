      PROGRAM MAIN
       INTEGER*2 I2A1(10), I2A2(10)
       REAL*4 R4S1, R4S2, R4S3(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1, L4S2, L4S3(10), L4A1(10), L4A2(10)
       DATA I2A1/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./ 
       DATA I2A2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       INTEGER*2 HI10, HI9, HI8, HI7, HI6, HI5, HI4, HI3, HI2, HI1
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1

       L4S2 = 0

       DO I=1,6,5
        HI6 = R4A1(I) + I2A2(I)
        HI7 = R4A1(I+1) + I2A2(I+1)
        HI8 = R4A1(I+2) + I2A2(I+2)
        HI9 = R4A1(I+3) + I2A2(I+3)
        HI10 = R4A1(I+4) + I2A2(I+4)
        R4S1 = R4A1(I+4) + R4A2(I+4)
        HI1 = R4A1(I)
        HI2 = R4A1(I+1)
        HI3 = R4A1(I+2)
        HI4 = R4A1(I+3)
        HI5 = R4A1(I+4)
        HI6 = R4A1(I) + HI6
        HI7 = R4A1(I+1) + HI7
        HI8 = R4A1(I+2) + HI8
        HI9 = R4A1(I+3) + HI9
        HI10 = R4A1(I+4) + HI10
        RR2 = R4A1(I) * 2.
        RR3 = R4A1(I+1) * 2.
        RR4 = R4A1(I+2) * 2.
        RR5 = R4A1(I+3) * 2.
        RR1 = R4A1(I+4) * 2.
        RR6 = RR2 + R4A2(I)
        RR7 = RR3 + R4A2(I+1)
        RR8 = RR4 + R4A2(I+2)
        RR9 = RR5 + R4A2(I+3)
        RR10 = RR1 + R4A2(I+4)
        HI1 = HI1 + RR6
        HI2 = HI2 + RR7
        HI3 = HI3 + RR8
        HI4 = HI4 + RR9
        HI5 = HI5 + RR10
        R4A1(I) = RR6
        RR2 = 1. + RR6
        R4A1(I+1) = RR7
        RR3 = 1. + RR7
        R4A1(I+2) = RR8
        RR4 = 1. + RR8
        R4A1(I+3) = RR9
        RR5 = 1. + RR9
        R4A1(I+4) = RR10
        RR1 = 1. + RR10
        HI6 = RR2 + HI6
        HI7 = RR3 + HI7
        HI8 = RR4 + HI8
        HI9 = RR5 + HI9
        HI10 = RR1 + HI10
        I2A2(I+4) = HI10
        I2A2(I+3) = HI9
        I2A2(I+2) = HI8
        I2A2(I+1) = HI7
        I2A2(I) = HI6
        I2A1(I+4) = HI5
        I2A1(I+3) = HI4
        I2A1(I+2) = HI3
        I2A1(I+1) = HI2
        I2A1(I) = HI1
       END DO
       L4S1 = L4A1(10) .AND. L4A2(10)

       WRITE (6, *) '** TEST NO. 1 **'
       WRITE (6, *) R4S1, 0., L4S1, L4S2, R4A1, R4A2, L4A1, L4A2
       WRITE (6, *) I2A1, I2A2


       DO I=1,10
        IF (L4A1(I)) THEN
         I2A1(I) = R4A1(I)
         I2A2(I) = R4A1(I) + I2A2(I)
         R4S1 = R4A1(I) + R4A2(I)
         L4S1 = L4A1(I) .AND. L4A2(I)
         I2A1(I) = R4A1(I)
         I2A2(I) = R4A1(I) + I2A2(I)
         R4A1(I) = R4A1(I) * 2. + R4A2(I)
         I2A1(I) = I2A1(I) + R4A1(I)
         I2A2(I) = 1. + R4A1(I) + I2A2(I)
        ELSE
         I2A1(I) = R4A2(I)
         I2A2(I) = R4A1(I) - I2A2(I)
         R4S1 = R4A1(I) * R4A2(I)
         L4S1 = L4A1(I) .OR. L4A2(I)
         I2A1(I) = R4A2(I)
         I2A2(I) = R4A2(I) + I2A2(I)
         R4A1(I) = R4A1(I) * R4A2(I) - R4A1(I)
         R4A2(I) = -R4A2(I)
         I2A1(I) = I2A1(I) + R4A2(I)
         I2A2(I) = 1. + R4A1(I) + I2A1(I)
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 **'
       WRITE (6, *) R4S1, 0., L4S1, L4S2, R4A1, R4A2, L4A1, L4A2

       STOP 
      END
