      INTEGER*2   A,FUNI2
      INTEGER*4   B,FUNI4
      REAL*4      C,FUNR4
      REAL*8      D,FUNR8
      LOGICAL*1   E,FUNL1
      LOGICAL*4   F,FUNL4
C
      DATA A/0/
      DATA B/0/
      DATA C/0.0/
      DATA D/0.0E+00/
      DATA E/.TRUE./
      DATA F/.FALSE./
C
      PRINT *,'test'
      A = FUNI2(A)
      B = FUNI4(B)
      C = FUNR4(C)
      D = FUNR8(D)
      E = FUNL1(E)
      F = FUNL4(F)
C
      WRITE(6,*) A,B,C,D,E,F
      STOP
      END
C
      INTEGER FUNCTION FUNI2(A)
      FUNI2 = A
      STOP
      END
      INTEGER FUNCTION FUNI4(B)
      FUNI4 = B
      RETURN
      END
      REAL    FUNCTION FUNR4(C)
      FUNR4 = C
      RETURN
      END
      REAL    FUNCTION FUNR8(D)
      FUNR8 = D
      RETURN
      END
      LOGICAL FUNCTION FUNL1(E)
      IF(E.EQ.1) THEN
       FUNL1 = .TRUE.
                 ELSE
       FUNL1 = .TRUE.
      ENDIF
      RETURN
      END
      LOGICAL FUNCTION FUNL4(F)
      IF(F.EQ.1) THEN
       FUNL4 = .TRUE.
                 ELSE
       FUNL4 = .FALSE.
      ENDIF
      RETURN
      END
