      PROGRAM MAIN

       LOGICAL*4 L1(10)
       INTEGER*4 I1(10)
       REAL*4 R1(10), R2(10)
       REAL*8 RD1(10), RD2(10)
       DATA L1/5*.TRUE.,5*.FALSE./ 
       DATA I1/10*0/ 
       DATA R1/10*0./ 
       DATA RD1/10*0./ 
       DATA R2/10*1./ 
       DATA RD2/10*4./ 

       LOGICAL*4 L11(10), L12(10)
       REAL*4 R11(10), S21
       REAL*8 RD11(10), RD12(10), RD13(10)
       DATA L11/5*.FALSE.,5*.TRUE./ 
       DATA R11/5*0.,5*1./ 
       DATA RD11/5*0.,5*2./ 
       DATA RD13/1,2,3,1,2,3,1,2,3,1/ 
       DATA L12/10*.FALSE./ 

       LOGICAL*4 L31(10), L32(10), L33(10), L34(10), L35(10), L36(10), 
     X   L37(10)
       REAL*8 RD21(10)
       INTEGER N
       PARAMETER (N = 10)
       INTEGER I2
       S21 = 0.
       DATA L31/10*.TRUE./ 
       DATA L32/10*.TRUE./ 
       DATA L33/10*.TRUE./ 
       DATA L34/10*.TRUE./ 
       DATA L35/10*.TRUE./ 
       DATA L36/10*.TRUE./ 
       DATA L37/10*.TRUE./ 
       DATA RD21/10*0./ 

       DO I2=1,10
        I = I2
        IF (L1(I2)) THEN
         I1(I2) = I2
         R1(I2) = R2(I2) + FLOAT (I2)
         RD1(I2) = SQRT (RD2(I2))
        ELSE
         GO TO 11
        END IF
       END DO
       I = 11

   11  WRITE (6, *) I, I1, R1, RD1

       DO I2=1,10
        IF (L11(I2) .OR. L12(I2)) GO TO 21
        R11(I2) = FLOAT (I2)
        RD11(I2) = SQRT (DFLOAT (I2))
        GO TO 22
   21   DO J=1,6,5
         RD12(J) = SIN (RD13(J))
         RD12(J+1) = SIN (RD13(J+1))
         RD12(J+2) = SIN (RD13(J+2))
         RD12(J+3) = SIN (RD13(J+3))
         RD12(J+4) = SIN (RD13(J+4))
        END DO
        GO TO 20
   22   S21 = S21 - R11(I2)
   20   CONTINUE
       END DO

       WRITE (6, *) R11, RD11, RD12, S21

       DO I2=1,10
        IF (L31(I2)) THEN
         IF (L32(I2)) THEN
          IF (L33(I2)) THEN
           IF (L34(I2)) THEN
            IF (L35(I2)) THEN
             IF (L36(I2)) THEN
              IF (L37(I2)) THEN
               RD21(I2) = SQRT (DFLOAT (I2))
              END IF
             END IF
            END IF
           END IF
          END IF
         END IF
        END IF
       END DO

       WRITE (6, *) RD21
       STOP 
      END
