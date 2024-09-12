      INTEGER*4 I10(5,5), I11(5,5), I12(5,5), I13(5,5), I14(5,5), I15(5,
     X  5), I16(5,5)

      DATA I10/25*0/ 
      DATA I11/5*1,5*2,5*3,5*2,5*1/ 
      DATA I12/10*1,10*2,5*3/ 
      DATA I13/3*1,3*-1,5*5,4*-3,10*2/ 
      DATA I14/25*0/ 
      DATA I15/15*1,10*2/ 
      DATA I16/25*0/ 

      REAL*4 R10(10), R11(10), R12(10,10)
      INTEGER N4, N3, N2, N1, N41, N31, N21, N11
      PARAMETER (N4 = 10, N3 = 10, N2 = 10, N1 = 10, N41 = 5)
      PARAMETER (N31 = 5, N21 = 5, N11 = 5)
      I10S = 0
      R11S = 1.
      DATA R10/10*0/ 
      DATA R11/1,2,3,4,5,6,7,8,9,10/ 
      DATA R12/100*0/ 

      WRITE (6, *) '----- TEST NO.1 -----'
      DO I=1,5
       DO J=1,5
        IF (J .NE. 1 .OR. J .NE. 10) THEN
         I10(I,J) = I10(I,J) + I11(I,J) * I12(I,J)
        END IF
       END DO

       I16(1,I) = I10(1,1) + I11(1,1)
       I16(2,I) = I10(2,2) + I11(2,2)
       I16(3,I) = I10(3,3) + I11(3,3)
       I16(4,I) = I10(4,4) + I11(4,4)
       I16(5,I) = I10(5,5) + I11(5,5)
      END DO

      DO K=1,5
   11  IF (I13(K,1) .GE. 0) THEN
        I14(K,K) = I13(K,1)
       ELSE
        I13(K,1) = I15(K,1)
        GO TO 11
       END IF
    2  IF (I13(K,2) .GE. 0) THEN
        I14(K,K) = I13(K,2)
       ELSE
        I13(K,2) = I15(K,2)
        GO TO 2
       END IF
    3  IF (I13(K,3) .GE. 0) THEN
        I14(K,K) = I13(K,3)
       ELSE
        I13(K,3) = I15(K,3)
        GO TO 3
       END IF
    4  IF (I13(K,4) .GE. 0) THEN
        I14(K,K) = I13(K,4)
       ELSE
        I13(K,4) = I15(K,4)
        GO TO 4
       END IF
      END DO

      DO K=1,5
    1  IF (I13(K,5) .GE. 0) THEN
        I14(K,K) = I13(K,5)
       ELSE
        I13(K,5) = I15(K,5)
        GO TO 1
       END IF
      END DO
      I10S = I10S + I16(1,1)
      I10S = I10S + I16(2,1)
      I10S = I10S + I16(3,1)
      I10S = I10S + I16(4,1)
      I10S = I10S + I16(5,1)
      I10S = I10S + I16(1,2)
      I10S = I10S + I16(2,2)
      I10S = I10S + I16(3,2)
      I10S = I10S + I16(4,2)
      I10S = I10S + I16(5,2)
      I10S = I10S + I16(1,3)
      I10S = I10S + I16(2,3)
      I10S = I10S + I16(3,3)
      I10S = I10S + I16(4,3)
      I10S = I10S + I16(5,3)
      I10S = I10S + I16(1,4)
      I10S = I10S + I16(2,4)
      I10S = I10S + I16(3,4)
      I10S = I10S + I16(4,4)
      I10S = I10S + I16(5,4)
      I10S = I10S + I16(1,5)
      I10S = I10S + I16(2,5)
      I10S = I10S + I16(3,5)
      I10S = I10S + I16(4,5)
      I10S = I10S + I16(5,5)

      WRITE (6, *) 'I10 = ', I10
      WRITE (6, *) 'I14 = ', I14
      WRITE (6, *) 'I13 = ', I13
      WRITE (6, *) 'I16 = ', I16
      WRITE (6, *) 'I10S = ', I10S


      WRITE (6, *) '----- TEST NO.2 -----'
      DO I=1,10
       DO J=1,6,5
        R10S = J
        R11S = R11S + R10S
        R10S = J + 1
        R11S = R11S + R10S
        R10S = J + 2
        R11S = R11S + R10S
        R10S = J + 3
        R11S = R11S + R10S
        R10S = J + 4
        R11S = R11S + R10S
       END DO

       DO K=1,10
        ASSIGN 51 TO I11S
        GO TO I11S, (51, 50)
   51   R10(K) = R10(K) + R11(K)
   50   CONTINUE
       END DO

       DO L=1,10
        R12(L,I) = R10(L)
        CALL SUB1 (R12,L)
       END DO
      END DO

      WRITE (6, *) ' R11S = ', R11S
      WRITE (6, *) ' R10  = ', R10
      WRITE (6, *) ' R12  = ', R12
      STOP 
      END

      SUBROUTINE SUB1 ( R12, L )
       REAL*4 R12(10,10), R13(10,10)
       DATA R13/50*1.,50*2./ 
       INTEGER II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       II2 = L / 4
       II1 = II2 * 4 + 1
       DO I=1,L-3,4
        RR1 = R12(I,I) + R13(I,I)
        RR2 = R12(I+1,I+1) + R13(I+1,I+1)
        RR3 = R12(I+2,I+2) + R13(I+2,I+2)
        RR4 = R12(I+3,I+3) + R13(I+3,I+3)
        R12(I+3,I+3) = RR4
        R12(I+2,I+2) = RR3
        R12(I+1,I+1) = RR2
        R12(I,I) = RR1
       END DO
       DO I=II1,L,1
        RR5 = R12(I,I) + R13(I,I)
        R12(I,I) = RR5
       END DO
       RETURN 
      END
