      PROGRAM MAIN
       REAL R10(10), R11(10), R12(10,10,3), R13(10,10,3), R14(10), R15(
     X   10)
       REAL RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, 
     X   RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1

       DO I=1,7,4
        DO J=1,10
         RR1 = I
         RR2 = I + 1
         RR3 = I + 2
         RR4 = I + 3
         RR1 = I
         RR2 = I + 1
         RR3 = I + 2
         RR4 = I + 3
         RR1 = I
         RR2 = I + 1
         RR3 = I + 2
         RR4 = I + 3
        END DO
        R11(I+3) = RR4
        R11(I+2) = RR3
        R11(I+1) = RR2
        R11(I) = RR1
       END DO
       DO J=1,10
        DO K=1,3
         RR5 = 9.
         RR6 = 10.
        END DO
       END DO
       R11(10) = RR6
       R11(9) = RR5


       DO I=1,10
        DO J=1,6,5
         R13(J,I,1) = I
         R13(J+1,I,1) = I
         R13(J+2,I,1) = I
         R13(J+3,I,1) = I
         R13(J+4,I,1) = I
         R13(J,I,2) = I
         R13(J+1,I,2) = I
         R13(J+2,I,2) = I
         R13(J+3,I,2) = I
         R13(J+4,I,2) = I
         R13(J,I,3) = I
         R13(J+1,I,3) = I
         R13(J+2,I,3) = I
         R13(J+3,I,3) = I
         R13(J+4,I,3) = I
        END DO
       END DO
       DO J=1,7,4

        DO I=1,10
         RR7 = J
         RR8 = J + 1
         RR9 = J + 2
         RR10 = J + 3
         RR7 = J
         RR8 = J + 1
         RR9 = J + 2
         RR10 = J + 3
         RR7 = J
         RR8 = J + 1
         RR9 = J + 2
         RR10 = J + 3
        END DO
        R15(J+3) = RR10
        R15(J+2) = RR9
        R15(J+1) = RR8
        R15(J) = RR7
       END DO

       DO I=1,10
        DO K=1,3
         RR11 = 9.
         RR12 = 10.
        END DO
       END DO
       R15(10) = RR12
       R15(9) = RR11


       WRITE (6, *) '----- TEST NO.1 ----- '
       DO I=1,10
        DO J=1,3
         R10(I) = I
         RR13 = R11(I) + R10(I) * 2.
         RR14 = R11(I) + R10(I)
         DO K=1,6,5
          RR15 = RR13
          RR16 = RR13
          RR17 = RR13
          RR18 = RR13
          RR19 = RR13
          R13(K,I,J) = RR14 + RR15
          R13(K+1,I,J) = RR14 + RR16
          R13(K+2,I,J) = RR14 + RR17
          R13(K+3,I,J) = RR14 + RR18
          R13(K+4,I,J) = RR14 + RR19
         END DO
         R14(I) = R10(I) * 2. + R11(I)
         R15(I) = R15(I) + R14(I)
        END DO
       END DO

       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R13 = ', R13
       WRITE (6, *) ' R14 = ', R14
       WRITE (6, *) ' R15 = ', R15
       STOP 
      END
