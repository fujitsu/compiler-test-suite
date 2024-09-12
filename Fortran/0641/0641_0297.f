      INTEGER*4 I10(10), I10S, I11S, I11(10)
      DATA I11/5*1,5*2/ 
      DATA I10/10*0/ 
      REAL*4 R10(10)
      DATA R10/1,2,3,4,5,6,7,8,9,10/ 
      REAL*8 D10(10)
      DATA D10/1,2,3,1,2,3,7,8,9,7/ 
      COMPLEX*8 C10(10)
      DATA C10/(1,1),2*(2,2),3*(3,3),4*(4,4)/ 
      COMPLEX*16 CD10(10)
      DATA CD10/6*(1,0),3*(1,1),(0,0)/ 

      LOGICAL*4 L20(11), L21S, L21(11), L22(10), L23(10,10), L24(10,10),
     X   L20S
      INTEGER N10, N9
      PARAMETER (N10 = 10, N9 = 9)
      REAL RR1, RR2
      PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2.)
      INTEGER II5, II4, II3, II2, II1
      I11S = 3
      I10S = 2
      DATA L24/25*.TRUE.,50*.FALSE.,25*.TRUE./ 
      DATA L23/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./ 
      DATA L22/10*.FALSE./ 
      DATA L21/.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,.TRUE.,.FALSE.,4*.TRUE./ 
      DATA L21S/.FALSE./ 
      DATA L20/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X  .FALSE.,.TRUE.,.FALSE.,.TRUE./ 

      WRITE (6, *) '----- TEST NO.1 -----'
      DO J=2,9
       DO I=1,6,5
        II1 = I10S
        I10(I) = II1
        I10S = II1 + I11S
        I11S = II1 * 2 + I11S
        II2 = I10S
        I10(I+1) = II2
        I10S = II2 + I11S
        I11S = II2 * 2 + I11S
        II3 = I10S
        I10(I+2) = II3
        I10S = II3 + I11S
        I11S = II3 * 2 + I11S
        II4 = I10S
        I10(I+3) = II4
        I10S = II4 + I11S
        I11S = II4 * 2 + I11S
        II5 = I10S
        I10(I+4) = II5
        I10S = II5 + I11S
        I11S = II5 * 2 + I11S
       END DO

       R10(J) = R10(J+1) + D10(J) + I11(J) * 8
       C10(J) = C10(J+1) + CD10(J) + R10(J) * RR1
       WRITE (6, *) ' TEST'
       R10(J) = I11(J) * 8 + R10(J-1) * D10(J)
       C10(J) = C10(J-1) + CD10(J) + R10(J) * RR2
       I11(J) = I11(J-1) + D10(J)
      END DO
      WRITE (6, *) ' I10 = ', I10, ' I10S = ', I10S, ' I11S = ', I11S
      WRITE (6, *) ' R10 = ', R10
      WRITE (6, *) ' I11 = ', I11
      WRITE (6, *) ' C10 = ', C10

      DO J=2,10
       WRITE (6, *) ' COUNT = ', J
       L20(J) = L20(J-1)
       L20(J) = L20(J) .OR. L20(J+1)
      END DO
      DO J=2,10
       L20S = L20(J) .NEQV. L21(J)

       L21(J) = L20(J) .AND. L21(J)
       L22(J) = L20(J) .AND. L20S
       DO I=1,10
        L20S = L20S .AND. L23(I,J)
        IF (L20S) THEN
         L23(I,J) = L24(I,J)
        END IF
       END DO
      END DO

      WRITE (6, *) ' L20 = ', L20, ' L20S = ', L20S
      WRITE (6, *) ' L21 = ', L21
      WRITE (6, *) ' L22 = ', L22
      WRITE (6, *) ' L23 = '
      WRITE (6, 300) L23
  300 FORMAT(20L3)
      STOP 
      END
