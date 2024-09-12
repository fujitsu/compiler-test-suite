      INTEGER*4 I10(11), I11(10), I12(10,10), I13(1,1), I14(10,10), I15(
     X  10,11)
      LOGICAL*4 L10(10), L11(10), L12(10), LS10

      DATA I10/1,2,3,4,5,6,7,8,9,10,11/ 
      DATA I11/10*0/ 
      DATA I12/50*1,50*2/ 
      DATA I13/0/ 
      DATA I14/10*1,10*2,10*3,10*4,10*5,50*6/ 
      DATA L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X  .FALSE.,.TRUE.,.FALSE./ 
      DATA L11/.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,
     X  .TRUE.,.FALSE.,.FALSE./ 
      DATA LS10/.TRUE./ 
      DATA I15/20*1,30*2,40*3,20*4/ 
      DATA L12/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./ 

      INTEGER*4 I20(10), I21(10), I22(11)
      DATA I20/10*0/ 
      LOGICAL*4 L20(5), L21(10)
      REAL*8 Q20(10,10), Q21(10,10)
      INTEGER I23, I10S, N3, N2, N1
      PARAMETER (I23 = 0, I10S = 5, N3 = 10, N2 = 10, N1 = 10)
      INTEGER II3, II2, II1
      DOUBLE PRECISION DD6, DD5, DD4, DD3, DD2, DD1
      I20S = 0
      I21S = 5
      I22S = 0
      DATA Q20/100*0/ 

      DATA I21/1,2,3,4,5,6,7,8,9,10/ 
      DATA L20/5*.TRUE./ 
      DATA Q21/50*5.0,50*6.5/ 
      DATA L21/5*.TRUE.,5*.FALSE./ 
      DATA I22/11*5/ 

      WRITE (6, *) '----- TEST NO.1 -----'
      DO I=1,10
       DO J=1,6,5
        I10(J+1) = I10(J)
        I10(J+2) = I10(J+1)
        I10(J+3) = I10(J+2)
        I10(J+4) = I10(J+3)
        I10(J+5) = I10(J+4)
       END DO
       DO J=1,6,5
        I11(J) = I10(J) / I12(J,I)
        I11(J+1) = I10(J+1) / I12(J+1,I)
        I11(J+2) = I10(J+2) / I12(J+2,I)
        I11(J+3) = I10(J+3) / I12(J+3,I)
        I11(J+4) = I10(J+4) / I12(J+4,I)
       END DO

       DO K=2,10
        IF (L12(K)) THEN
         L12(K) = .NOT.L12(K-1)
        END IF
       END DO
      END DO
      II1 = I13(1,1)
      DO I=1,10

       II1 = II1 + I14(I,I)
       IF (L10(I)) THEN
        L10(I) = L10(I) .AND. L11(I)
       ELSE
        L10(I) = .TRUE.
       END IF
      END DO
      I13(1,1) = II1

      IS10 = I15(10,11)
      DO I=1,7,4

       DO K=2,8,3
        I15(K,I) = 5
        I15(K+1,I) = 5
        I15(K+2,I) = 5
        I15(K,I+1) = 5
        I15(K+1,I+1) = 5
        I15(K+2,I+1) = 5
        I15(K,I+2) = 5
        I15(K+1,I+2) = 5
        I15(K+2,I+2) = 5
        I15(K,I+3) = 5
        I15(K+1,I+3) = 5
        I15(K+2,I+3) = 5
       END DO
      END DO
      DO I=9,10,1

       DO K=2,8,3
        I15(K,I) = 5
        I15(K+1,I) = 5
        I15(K+2,I) = 5
       END DO
      END DO

      WRITE (6, *) 'I10 = ', I10
      WRITE (6, *) 'I11 = ', I11
      WRITE (6, *) 'I13 = ', I13
      WRITE (6, *) 'L10 = ', L10
      WRITE (6, *) 'I15 = ', I15
      WRITE (6, *) 'IS10 = ', IS10
      WRITE (6, *) 'L12 = ', L12

      WRITE (6, *) '----- TEST NO.2 -----'
      IF (L20(5)) THEN
       DO I=2,8,3
        I20(I) = SQRT (FLOAT (I21(I) + I))
        I20S = I20S + I21(I) + I20(I)
        I21S = MAX0 (I21S, I20(I))
        I20(I+1) = SQRT (FLOAT (I21(I+1) + I + 1))
        I20S = I20S + I21(I+1) + I20(I+1)
        I21S = MAX0 (I21S, I20(I+1))
        I20(I+2) = SQRT (FLOAT (I21(I+2) + I + 2))
        I20S = I20S + I21(I+2) + I20(I+2)
        I21S = MAX0 (I21S, I20(I+2))
       END DO

       DO J=1,10
        II2 = I21(J)
        DO I=2,8,3
         DD1 = Q21(I,J)
         I22S = I22S + DD1
         I22S = I22S + II2
         DD2 = Q21(I+1,J)
         I22S = I22S + DD2
         I22S = I22S + II2
         DD3 = Q21(I+2,J)
         I22S = I22S + DD3
         I22S = I22S + II2
         Q20(I+2,J) = DD3
         Q20(I+1,J) = DD2
         Q20(I,J) = DD1
        END DO
       END DO
       DO I=2,10

        I23S = I21(I)
        IF (L21(I)) THEN
         I23S = I21(I) + I
        ELSE
         I22(I) = I23S
        END IF
        I22(I-1) = I23S + MIN0 (0, I22(I))
       END DO
      ELSE
       DO I=2,8,3
        I20(I) = SQRT (FLOAT (I21(I) + I))
        I20S = I20S + I21(I) + I20(I)
        I20(I+1) = SQRT (FLOAT (I21(I+1) + I + 1))
        I20S = I20S + I21(I+1) + I20(I+1)
        I20(I+2) = SQRT (FLOAT (I21(I+2) + I + 2))
        I20S = I20S + I21(I+2) + I20(I+2)
       END DO

       DO J=1,10
        II3 = I21(J)
        DO I=2,8,3
         DD4 = Q21(I,J)
         I22S = I22S + DD4
         I22S = I22S + II3
         DD5 = Q21(I+1,J)
         I22S = I22S + DD5
         I22S = I22S + II3
         DD6 = Q21(I+2,J)
         I22S = I22S + DD6
         I22S = I22S + II3
         Q20(I+2,J) = DD6
         Q20(I+1,J) = DD5
         Q20(I,J) = DD4
        END DO
       END DO
       DO I=2,10

        I23S = I21(I)
        IF (L21(I)) THEN
         I23S = I21(I) + I
        ELSE
         I22(I) = I23S
        END IF
        I22(I-1) = I23S + MIN0 (0, I22(I))
       END DO
      END IF
      WRITE (6, *) 'I20  = ', I20
      WRITE (6, *) 'I20S = ', I20S
      WRITE (6, *) 'I21S = ', I21S
      WRITE (6, *) 'Q20  = ', Q20
      WRITE (6, *) 'I22S = ', I22S
      WRITE (6, *) 'I22  = ', I22
      STOP 
      END
