      INTEGER*4 IDA
      REAL*4 R4A(-9:20), R4B(-9:20)

      INTEGER*4 IDB
      LOGICAL*4 L4A(-9:20)
      REAL*4 RSUM
      INTEGER J4, J3, J2, J1
      PARAMETER (J4 = 4, J3 = 3, J2 = 2, J1 = 1)
      INTEGER II1
      REAL RC8, RB8, RA8, RC7, RB7, RA7, RC6, RB6, RA6, RC5, RB5, RA5, 
     X  RC4, RB4, RA4, RC3, RB3, RA3, RC2, RB2, RA2, RC1, RB1, RA1

      RFUN1(RA, RB, RC) = RA + RB + RC
      RFUN2(RA, RB, RC) = RA + RB + RC
      RFUN3(RA, RB, RC) = RA - RB * RC
      RSUM = 0.
      DATA R4A/30*1.0/ 
      DATA R4B/30*2./ 
      DATA L4A/5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE.
     X  / 

      DO I0=1,10

       II1 = -1
       DO I1=-7,9,2
        II1 = II1 + 1
        R4A(II1-8) = R4A(II1-7) * R4B(I1)
        IF (I1 .LT. II1 - 8) THEN
         RA6 = R4A(II1-8)
         RB6 = R4B(II1-8)
         RC6 = R4A(II1-7)
         RA7 = R4A(II1-8)
         RB7 = R4B(II1-8)
         RC7 = R4A(II1-7)
         RA8 = R4A(II1-8)
         RB8 = R4B(II1-8)
         RC8 = R4A(II1-7)
         R4B(I1) = RA6 + RB6 + RC6 + RC7 + RB7 + RA7 + RC8 + RB8 + RA8
         WRITE (6, *) 'R4B(', I1, ')=', R4B(I1)
        END IF
       END DO

       DO I2=-5,11,1
        RSUM = RSUM + RFUN4 (R4A(I2),R4A(I2-1),R4B(I2))
        IF (L4A(I2)) THEN
         WRITE (6, *) 'RSUM=', RSUM, 'I2=', I2
        END IF
       END DO
       WRITE (6, *) 'RSUM=', RSUM
      END DO
      STOP 
      END

      FUNCTION RFUN4 ( RA, RB, RC )
       REAL RR1
       PARAMETER (RR1 = 1. / 2.)
       RY = (RA + RB) * RR1
       RY = RY * 8. + RC
       RFUN4 = RY + RY * RC
       RETURN 
      END
