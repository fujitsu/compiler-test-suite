      CHARACTER*4 CH10
      DATA CH10/'STOO'/ 
      INTEGER*4 I10(10,2), I11(5,5), I12(5,5)
      REAL*8 Q10(5), Q11(5)
      DATA Q11/1,2,3,4,5/ 
      DATA Q10/5*0/ 
      LOGICAL*4 L10(2), L11(2), L12(2)
      DATA L10/.TRUE.,.FALSE./ 

      DATA I10/5*1,5*2,5*3,5*4/ 
      DATA I11/25*0/ 
      DATA I12/5*12,5*18,5*30,5*36,5*40/ 
      DATA L11/.FALSE.,.TRUE./ 
      DATA L12/.FALSE.,.FALSE./ 

      INTEGER*4 I20(10), I21(11,2), I22(10,2)
      LOGICAL*4 L20(10)
      DATA L20/2*.FALSE.,2*.TRUE.,2*.FALSE.,4*.TRUE./ 
      REAL*8 RD20(10)
      DATA RD20/1,2,3,4,5,6.1,7.2,8.3,9.4,10.5/ 

      DATA I21/22*0/ 

      INTEGER*4 I30(10,2), I31(10,2), I32(2,10)
      REAL*4 R30(2,2)
      REAL*8 RD30S, RD30(10), RD31(10), RD32(11)
      CHARACTER CH30*3, CH31*5
      INTEGER N5, N10, N2
      PARAMETER (N5 = 5, N10 = 10, N2 = 2)
      INTEGER II15, II14, II13, II12, II11, II10, II9, II8, II7, II6, 
     X  II5, II4, II3, II2, II1
      REAL RR3, RR2, RR1
      DOUBLE PRECISION DD1
      I10S = 0
      I11S = 0
      I12S = 100
      I14S = 0
      R20S = 0.

      DATA I30/20*1/ 
      DATA I31/4*1,4*2,4*3,4*4,4*5/ 
      DATA I32/10*1,10*-1/ 
      DATA R30/1,2,3,4/ 
      DATA CH30/'   '/ 
      DATA CH31/'TEST '/ 
      DATA RD30/5*1.5,5*2.5/ 
      DATA RD31/3*1.5,3*1.4,3*1.3,1/ 
      DATA RD32/11*1.8/ 

      I13S = 0
      DO II1=1,6,5
       I22(II1,1) = 0
       I22(II1+1,1) = 0
       I22(II1+2,1) = 0
       I22(II1+3,1) = 0
       I22(II1+4,1) = 0
       I22(II1,2) = 0
       I22(II1+1,2) = 0
       I22(II1+2,2) = 0
       I22(II1+3,2) = 0
       I22(II1+4,2) = 0
      END DO

      WRITE (6, *) ' ----- NO.1 -----'
      IF (CH10(1:4) .NE. 'STOP') THEN

       DO I=1,2
        IF (L11(I) .OR. L12(I)) THEN
         IF (L10(I)) THEN
          IF (L11(I)) THEN
           DO J=1,10

            DO I1=1,10
             CALL SUB1 (I1)
            END DO

            DO I2=1,6,5
             I10S = I10S + I10(I2,I)
             I10S = I10S + I10(I2+1,I)
             I10S = I10S + I10(I2+2,I)
             I10S = I10S + I10(I2+3,I)
             I10S = I10S + I10(I2+4,I)
            END DO

            Q10(1) = Q11(1)
            Q10(2) = Q11(2)
            Q10(3) = Q11(3)
            Q10(4) = Q11(4)
            Q10(5) = Q11(5)
            I11(1,1) = I12(1,1) / 6
            I11(2,2) = I12(2,2) / 6
            I11(3,3) = I12(3,3) / 6
            I11(4,4) = I12(4,4) / 6
            I11(5,5) = I12(5,5) / 6

            DO I4=1,5
             IF (I12S .LT. I11(I4,I)) THEN
              I12S = I11(I4,I)
              I13S = I4
             END IF
             WRITE (6, *) ' TEST'
            END DO

            I14S = I14S + I11(1,1)
            I11(1,1) = I12(1,I)
            I14S = I14S + I11(2,2)
            I11(2,2) = I12(2,I)
            I14S = I14S + I11(3,3)
            I11(3,3) = I12(3,I)
            I14S = I14S + I11(4,4)
            I11(4,4) = I12(4,I)
            I14S = I14S + I11(5,5)
            I11(5,5) = I12(5,I)
           END DO
          ELSE
           DO J=1,10

            DO I1=1,10
             CALL SUB1 (I1)
            END DO

            DO I2=1,6,5
             I10S = I10S + I10(I2,I)
             I10S = I10S + I10(I2+1,I)
             I10S = I10S + I10(I2+2,I)
             I10S = I10S + I10(I2+3,I)
             I10S = I10S + I10(I2+4,I)
            END DO
            Q10(1) = Q11(1)
            Q10(2) = Q11(2)
            Q10(3) = Q11(3)
            Q10(4) = Q11(4)
            Q10(5) = Q11(5)
            I11(1,1) = I12(1,1) / 6
            I11(2,2) = I12(2,2) / 6
            I11(3,3) = I12(3,3) / 6
            I11(4,4) = I12(4,4) / 6
            I11(5,5) = I12(5,5) / 6
            DO I4=1,5
             IF (I12S .LT. I11(I4,I)) THEN
              I12S = I11(I4,I)
              I13S = I4
             END IF
            END DO
            I14S = I14S + I11(1,1)
            I11(1,1) = I12(1,I)
            I14S = I14S + I11(2,2)
            I11(2,2) = I12(2,I)
            I14S = I14S + I11(3,3)
            I11(3,3) = I12(3,I)
            I14S = I14S + I11(4,4)
            I11(4,4) = I12(4,I)
            I14S = I14S + I11(5,5)
            I11(5,5) = I12(5,I)
           END DO
          END IF
         ELSE
          IF (L11(I)) THEN
           DO J=1,10

            DO I1=1,10
             CALL SUB1 (I1)
            END DO
            DO I2=1,6,5
             I11S = I11S + I10(I2,I)
             I11S = I11S + I10(I2+1,I)
             I11S = I11S + I10(I2+2,I)
             I11S = I11S + I10(I2+3,I)
             I11S = I11S + I10(I2+4,I)
            END DO
            Q10(1) = Q11(1)
            Q10(2) = Q11(2)
            Q10(3) = Q11(3)
            Q10(4) = Q11(4)
            Q10(5) = Q11(5)
            I11(1,1) = I12(1,1) / 6
            I11(2,2) = I12(2,2) / 6
            I11(3,3) = I12(3,3) / 6
            I11(4,4) = I12(4,4) / 6
            I11(5,5) = I12(5,5) / 6

            DO I4=1,5
             IF (I12S .LT. I11(I4,I)) THEN
              I12S = I11(I4,I)
              I13S = I4
             END IF
             WRITE (6, *) ' TEST'
            END DO
            I14S = I14S + I11(1,1)
            I11(1,1) = I12(1,I)
            I14S = I14S + I11(2,2)
            I11(2,2) = I12(2,I)
            I14S = I14S + I11(3,3)
            I11(3,3) = I12(3,I)
            I14S = I14S + I11(4,4)
            I11(4,4) = I12(4,I)
            I14S = I14S + I11(5,5)
            I11(5,5) = I12(5,I)
           END DO
          ELSE
           DO J=1,10

            DO I1=1,10
             CALL SUB1 (I1)
            END DO
            DO I2=1,6,5
             I11S = I11S + I10(I2,I)
             I11S = I11S + I10(I2+1,I)
             I11S = I11S + I10(I2+2,I)
             I11S = I11S + I10(I2+3,I)
             I11S = I11S + I10(I2+4,I)
            END DO
            Q10(1) = Q11(1)
            Q10(2) = Q11(2)
            Q10(3) = Q11(3)
            Q10(4) = Q11(4)
            Q10(5) = Q11(5)
            I11(1,1) = I12(1,1) / 6
            I11(2,2) = I12(2,2) / 6
            I11(3,3) = I12(3,3) / 6
            I11(4,4) = I12(4,4) / 6
            I11(5,5) = I12(5,5) / 6
            DO I4=1,5
             IF (I12S .LT. I11(I4,I)) THEN
              I12S = I11(I4,I)
              I13S = I4
             END IF
            END DO
            I14S = I14S + I11(1,1)
            I11(1,1) = I12(1,I)
            I14S = I14S + I11(2,2)
            I11(2,2) = I12(2,I)
            I14S = I14S + I11(3,3)
            I11(3,3) = I12(3,I)
            I14S = I14S + I11(4,4)
            I11(4,4) = I12(4,I)
            I14S = I14S + I11(5,5)
            I11(5,5) = I12(5,I)
           END DO
          END IF
         END IF
        ELSE
         IF (L10(I)) THEN
          DO J=1,10

           DO I1=1,10
            CALL SUB1 (I1)
           END DO

           DO I2=1,6,5
            I10S = I10S + I10(I2,I)
            I10S = I10S + I10(I2+1,I)
            I10S = I10S + I10(I2+2,I)
            I10S = I10S + I10(I2+3,I)
            I10S = I10S + I10(I2+4,I)
           END DO
           Q10(1) = Q11(1)
           Q10(2) = Q11(2)
           Q10(3) = Q11(3)
           Q10(4) = Q11(4)
           Q10(5) = Q11(5)
           I11(1,1) = I12(1,1) / 6
           I11(2,2) = I12(2,2) / 6
           I11(3,3) = I12(3,3) / 6
           I11(4,4) = I12(4,4) / 6
           I11(5,5) = I12(5,5) / 6
           DO I4=1,5
            IF (I12S .LT. I11(I4,I)) THEN
             I12S = I11(I4,I)
             I13S = I4
            END IF
           END DO
          END DO
         ELSE
          DO J=1,10

           DO I1=1,10
            CALL SUB1 (I1)
           END DO
           DO I2=1,6,5
            I11S = I11S + I10(I2,I)
            I11S = I11S + I10(I2+1,I)
            I11S = I11S + I10(I2+2,I)
            I11S = I11S + I10(I2+3,I)
            I11S = I11S + I10(I2+4,I)
           END DO
           Q10(1) = Q11(1)
           Q10(2) = Q11(2)
           Q10(3) = Q11(3)
           Q10(4) = Q11(4)
           Q10(5) = Q11(5)
           I11(1,1) = I12(1,1) / 6
           I11(2,2) = I12(2,2) / 6
           I11(3,3) = I12(3,3) / 6
           I11(4,4) = I12(4,4) / 6
           I11(5,5) = I12(5,5) / 6
           DO I4=1,5
            IF (I12S .LT. I11(I4,I)) THEN
             I12S = I11(I4,I)
             I13S = I4
            END IF
           END DO
          END DO
         END IF
        END IF
       END DO
      END IF
      WRITE (6, *) 'I10S = ', I10S
      WRITE (6, *) 'I11S = ', I11S
      WRITE (6, *) 'Q10  = ', Q10
      WRITE (6, *) 'I11  = ', I11
      WRITE (6, *) 'I12S = ', I12S
      WRITE (6, *) 'I13S = ', I13S
      WRITE (6, *) 'I14S = ', I14S

      WRITE (6, *) ' ----- NO.2 -----'
      DO I1=1,10
       IF (L20(I1)) THEN
        II4 = -I1
                                                       
        DO J=1,10
         II3 = I1
         II3 = II4
        END DO
        I20(I1) = II3
       ELSE
        DO J=1,10
         II5 = I1
        END DO
        I20(I1) = II5
       END IF
      END DO
                                                       
      DO J=1,10

       DO I2=1,6,5
        I21(I2,1) = 1
        I22(I2,1) = I21(I2,1)
        I20S = I22(I2,1)
        I21(I2+1,1) = I20S
        I21(I2+1,1) = 1
        I22(I2+1,1) = I21(I2+1,1)
        I20S = I22(I2+1,1)
        I21(I2+2,1) = I20S
        I21(I2+2,1) = 1
        I22(I2+2,1) = I21(I2+2,1)
        I20S = I22(I2+2,1)
        I21(I2+3,1) = I20S
        I21(I2+3,1) = 1
        I22(I2+3,1) = I21(I2+3,1)
        I20S = I22(I2+3,1)
        I21(I2+4,1) = I20S
        I21(I2+4,1) = 1
        I22(I2+4,1) = I21(I2+4,1)
        I20S = I22(I2+4,1)
        I21(I2+5,1) = I20S
       END DO
      END DO

      DO I3=1,10
       DD1 = RD20(I3)
                                                       
       DO J=1,6,5
        R20S = R20S + DD1
        R20S = R20S + DD1
        R20S = R20S + DD1
        R20S = R20S + DD1
        R20S = R20S + DD1
       END DO
      END DO

      WRITE (6, *) ' I20  = ', I20
      WRITE (6, *) ' I21  = ', I21
      WRITE (6, *) ' I22  = ', I22
      WRITE (6, *) ' R20S = ', R20S

      WRITE (6, *) ' ----- NO.3 -----'
      DO J=1,6,5
       II6 = I30(J,1) + I31(J,1) * I32(1,J)
       II7 = I30(J+1,1) + I31(J+1,1) * I32(1,J+1)
       II8 = I30(J+2,1) + I31(J+2,1) * I32(1,J+2)
       II9 = I30(J+3,1) + I31(J+3,1) * I32(1,J+3)
       II10 = I30(J+4,1) + I31(J+4,1) * I32(1,J+4)
       II11 = I30(J,2) + I31(J,2) * I32(2,J)
       II12 = I30(J+1,2) + I31(J+1,2) * I32(2,J+1)
       II13 = I30(J+2,2) + I31(J+2,2) * I32(2,J+2)
       II14 = I30(J+3,2) + I31(J+3,2) * I32(2,J+3)
       II15 = I30(J+4,2) + I31(J+4,2) * I32(2,J+4)
       I30(J+4,2) = II15
       I30(J+3,2) = II14
       I30(J+2,2) = II13
       I30(J+1,2) = II12
       I30(J,2) = II11
       I30(J+4,1) = II10
       I30(J+3,1) = II9
       I30(J+2,1) = II8
       I30(J+1,1) = II7
       I30(J,1) = II6
      END DO
      RR2 = R30(1,1)
      RR3 = R30(2,2)
      DO J=1,10
       II2 = I30(J,1)
       I31S = I30(J,2)
       DO I1=1,6,5
        RR1 = II2
        R30S = I31S
        RR2 = RR2 + RR1
        RR3 = RR3 + R30S
        RR1 = II2
        R30S = I31S
        RR2 = RR2 + RR1
        RR3 = RR3 + R30S
        RR1 = II2
        R30S = I31S
        RR2 = RR2 + RR1
        RR3 = RR3 + R30S
        RR1 = II2
        R30S = I31S
        RR2 = RR2 + RR1
        RR3 = RR3 + R30S
        RR1 = II2
        R30S = I31S
        RR2 = RR2 + RR1
        RR3 = RR3 + R30S
       END DO
      END DO
      R30(2,2) = RR3
      R30(1,1) = RR2
      DO I=1,2
       DO J=1,10

        DO I3=1,6,5
         CH30(1:3) = CH31(1:3)
         CH30(1:3) = CH31(1:3)
         CH30(1:3) = CH31(1:3)
         CH30(1:3) = CH31(1:3)
         CH30(1:3) = CH31(1:3)
        END DO
       END DO
      END DO
      DO I=1,2
       DO J=1,10

        DO I4=1,6,5
         RD32(I4+1) = RD32(I4) + RD31(I4) + RD30(I4)
         RD32(I4+2) = RD32(I4+1) + RD31(I4+1) + RD30(I4+1)
         RD32(I4+3) = RD32(I4+2) + RD31(I4+2) + RD30(I4+2)
         RD32(I4+4) = RD32(I4+3) + RD31(I4+3) + RD30(I4+3)
         RD32(I4+5) = RD32(I4+4) + RD31(I4+4) + RD30(I4+4)
        END DO
       END DO
      END DO
      DO I=1,2
       DO J=1,10

        WRITE (6, *) 'COUNT = ', J
       END DO
      END DO
      WRITE (6, *) 'I30 = ', I30
      WRITE (6, *) 'R30 = ', R30
      WRITE (6, *) 'CH30= ', CH30
      WRITE (6, *) 'RD32= ', RD32
      STOP 
      END

      SUBROUTINE SUB1 ( I1 )
       I1 = I1 + 1
       RETURN 
      END
 
 
 
 
