      PARAMETER (N=98)
      LOGICAL*1 T1(N),WORK1,ANS1
      LOGICAL*4 T2(N),WORK2,ANS2
      INTEGER*1 I1(N)
      INTEGER*2 I2(N)
      INTEGER*4 I4(N)
      INTEGER*8 I8(N)
      REAL*4    R4(N)
      REAL*8    R8(N)
      REAL*16   R16(N)
      PRINT *,'START'
      WORK1 = .TRUE.
      WORK2 = .FALSE.
      ANS1  = .TRUE.
      ANS2  = .FALSE.

      DO 1 I=1,N
        T1(I) = .TRUE..AND.WORK1
        T2(I) = .TRUE..AND.WORK2
        I1(I) = 0
        I2(I) = 0
        I4(I) = 0
        I8(I) = 0
        R4(I) = 0.0
        R8(I) = 0.0D0
 1      R16(I) = 0.0Q0
        
      CALL TE1(T1,T2,I1,ANS1,ANS2,N)
      CALL TE2(T1,T2,I2,ANS1,ANS2,N)
      CALL TE3(T1,T2,I4,ANS1,ANS2,N)
      CALL TE4(T1,T2,I8,ANS1,ANS2,N)
      CALL TE5(T1,T2,R4,ANS1,ANS2,N)
      CALL TE6(T1,T2,R8,ANS1,ANS2,N)
      CALL TE7(T1,T2,R16,ANS1,ANS2,N)

      PRINT *,'END'
      STOP
      END

      SUBROUTINE TE1(T1,T2,IX,ANS1,ANS2,N)
      INTEGER*1 IX(N),WORK,TMPX(N)
      LOGICAL*1 T1(N),TMP1(N),ANS1,A_T1
      LOGICAL*4 T2(N),TMP2(N),ANS2,A_T2

      WORK = IX(N-N/2)
      A_T1 = .TRUE.
      A_T2 = .TRUE.

      DO 1 I=1,N
       TMP1(I) = A_T1
       TMP2(I) = A_T2
 1     CONTINUE

      DO 2 I=1,N
       TMP1(I) = TMP1(I).AND.(IX(I).GE.WORK).AND.T1(I)
       TMP2(I) = TMP2(I).AND.(IX(I).GE.WORK).AND.T2(I)
 2    CONTINUE

      DO 3 I=1,N,2
       A_T1 = A_T1.AND.TMP1(I).AND.TMP2(I+1)
       TMPX(I) = IX(I)+ WORK
       A_T2 = A_T2.AND.TMP2(I).AND.TMP1(I+1)
 3     TMPX(I+1) = IX(I+1)+ WORK

       PRINT *,A_T1.AND.ANS1
       PRINT *,A_T2.OR.ANS2
       PRINT *,IX(N)
       END

      SUBROUTINE TE2(T1,T2,IX,ANS1,ANS2,N)
      INTEGER*2 IX(N),WORK,TMPX(N)
      LOGICAL*1 T1(N),TMP1(N),ANS1,A_T1
      LOGICAL*4 T2(N),TMP2(N),ANS2,A_T2

      WORK = IX(N-N/2)
      A_T1 = .TRUE.
      A_T2 = .TRUE.

      DO 1 I=1,N
       TMP1(I) = A_T1
       TMP2(I) = A_T2
 1     CONTINUE

      DO 2 I=1,N
       TMP1(I) = TMP1(I).AND.(IX(I).GE.WORK).AND.T1(I)
       TMP2(I) = TMP2(I).AND.(IX(I).GE.WORK).AND.T2(I)
 2    CONTINUE

      DO 3 I=1,N,2
       A_T1 = A_T1.AND.TMP1(I).AND.TMP2(I+1)
       TMPX(I) = IX(I)+ WORK
       A_T2 = A_T2.AND.TMP2(I).AND.TMP1(I+1)
 3     TMPX(I+1) = IX(I+1)+ WORK

       PRINT *,A_T1.AND.ANS1
       PRINT *,A_T2.OR.ANS2
       PRINT *,IX(N)
       END

      SUBROUTINE TE3(T1,T2,IX,ANS1,ANS2,N)
      INTEGER*4 IX(N),WORK,TMPX(N)
      LOGICAL*1 T1(N),TMP1(N),ANS1,A_T1
      LOGICAL*4 T2(N),TMP2(N),ANS2,A_T2

      WORK = IX(N-N/2)
      A_T1 = .TRUE.
      A_T2 = .TRUE.

      DO 1 I=1,N
       TMP1(I) = A_T1
       TMP2(I) = A_T2
 1     CONTINUE

      DO 2 I=1,N
       TMP1(I) = TMP1(I).AND.(IX(I).GE.WORK).AND.T1(I)
       TMP2(I) = TMP2(I).AND.(IX(I).GE.WORK).AND.T2(I)
 2    CONTINUE

      DO 3 I=1,N,2
       A_T1 = A_T1.AND.TMP1(I).AND.TMP2(I+1)
       TMPX(I) = IX(I)+ WORK
       A_T2 = A_T2.AND.TMP2(I).AND.TMP1(I+1)
 3     TMPX(I+1) = IX(I+1)+ WORK

       PRINT *,A_T1.AND.ANS1
       PRINT *,A_T2.OR.ANS2
       PRINT *,IX(N)
       END

       SUBROUTINE TE4(T1,T2,IX,ANS1,ANS2,N)
      INTEGER*8 IX(N),WORK,TMPX(N)
      LOGICAL*1 T1(N),TMP1(N),ANS1,A_T1
      LOGICAL*4 T2(N),TMP2(N),ANS2,A_T2

      WORK = IX(N-N/2)
      A_T1 = .TRUE.
      A_T2 = .TRUE.

      DO 1 I=1,N
       TMP1(I) = A_T1
       TMP2(I) = A_T2
 1     CONTINUE

      DO 2 I=1,N
       TMP1(I) = TMP1(I).AND.(IX(I).GE.WORK).AND.T1(I)
       TMP2(I) = TMP2(I).AND.(IX(I).GE.WORK).AND.T2(I)
 2    CONTINUE

      DO 3 I=1,N,2
       A_T1 = A_T1.AND.TMP1(I).AND.TMP2(I+1)
       TMPX(I) = IX(I)+ WORK
       A_T2 = A_T2.AND.TMP2(I).AND.TMP1(I+1)
 3     TMPX(I+1) = IX(I+1)+ WORK

       PRINT *,A_T1.AND.ANS1
       PRINT *,A_T2.OR.ANS2
       PRINT *,IX(N)
       END

      SUBROUTINE TE5(T1,T2,IX,ANS1,ANS2,N)
      REAL*4 IX(N),WORK,TMPX(N)
      LOGICAL*1 T1(N),TMP1(N),ANS1,A_T1
      LOGICAL*4 T2(N),TMP2(N),ANS2,A_T2

      WORK = IX(N-N/2)
      A_T1 = .TRUE.
      A_T2 = .TRUE.

      DO 1 I=1,N
       TMP1(I) = A_T1
       TMP2(I) = A_T2
 1     CONTINUE

      DO 2 I=1,N
       TMP1(I) = TMP1(I).AND.(IX(I).GE.WORK).AND.T1(I)
       TMP2(I) = TMP2(I).AND.(IX(I).GE.WORK).AND.T2(I)
 2    CONTINUE

      DO 3 I=1,N,2
       A_T1 = A_T1.AND.TMP1(I).AND.TMP2(I+1)
       TMPX(I) = IX(I)+ WORK
       A_T2 = A_T2.AND.TMP2(I).AND.TMP1(I+1)
 3     TMPX(I+1) = IX(I+1)+ WORK

       PRINT *,A_T1.AND.ANS1
       PRINT *,A_T2.OR.ANS2
       PRINT *,IX(N)
       END

      SUBROUTINE TE6(T1,T2,IX,ANS1,ANS2,N)
      REAL*8 IX(N),WORK,TMPX(N)
      LOGICAL*1 T1(N),TMP1(N),ANS1,A_T1
      LOGICAL*4 T2(N),TMP2(N),ANS2,A_T2

      WORK = IX(N-N/2)
      A_T1 = .TRUE.
      A_T2 = .TRUE.

      DO 1 I=1,N
       TMP1(I) = A_T1
       TMP2(I) = A_T2
 1     CONTINUE

      DO 2 I=1,N
       TMP1(I) = TMP1(I).AND.(IX(I).GE.WORK).AND.T1(I)
       TMP2(I) = TMP2(I).AND.(IX(I).GE.WORK).AND.T2(I)
 2    CONTINUE

      DO 3 I=1,N,2
       A_T1 = A_T1.AND.TMP1(I).AND.TMP2(I+1)
       TMPX(I) = IX(I)+ WORK
       A_T2 = A_T2.AND.TMP2(I).AND.TMP1(I+1)
 3     TMPX(I+1) = IX(I+1)+ WORK

       PRINT *,A_T1.AND.ANS1
       PRINT *,A_T2.OR.ANS2
       PRINT *,IX(N)
       END

      SUBROUTINE TE7(T1,T2,IX,ANS1,ANS2,N)
      REAL*16 IX(N),WORK,TMPX(N)
      LOGICAL*1 T1(N),TMP1(N),ANS1,A_T1
      LOGICAL*4 T2(N),TMP2(N),ANS2,A_T2

      WORK = IX(N-N/2)
      A_T1 = .TRUE.
      A_T2 = .TRUE.

      DO 1 I=1,N
       TMP1(I) = A_T1
       TMP2(I) = A_T2
 1     CONTINUE

      DO 2 I=1,N
       TMP1(I) = TMP1(I).AND.(IX(I).GE.WORK).AND.T1(I)
       TMP2(I) = TMP2(I).AND.(IX(I).GE.WORK).AND.T2(I)
 2    CONTINUE

      DO 3 I=1,N,2
       A_T1 = A_T1.AND.TMP1(I).AND.TMP2(I+1)
       TMPX(I) = IX(I)+ WORK
       A_T2 = A_T2.AND.TMP2(I).AND.TMP1(I+1)
 3     TMPX(I+1) = IX(I+1)+ WORK

       PRINT *,A_T1.AND.ANS1
       PRINT *,A_T2.OR.ANS2
       PRINT *,IX(N)
       END
