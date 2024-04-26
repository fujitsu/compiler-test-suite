      REAL*8 A(100),B(100)
      LOGICAL L(100)
      COMMON /SSU/A,B
      DO 10 I=1,100,2
         L(I)   = .TRUE.
         L(I+1) = .FALSE.
         A(I)   = SIN(FLOAT(I))
         A(I+1) = SIN(FLOAT(I+1))
         B(I)   = COS(FLOAT(I))
         B(I+1) = COS(FLOAT(I+1))
   10 CONTINUE

      DO 20 I=1,100
         IF(L(I)) THEN
            A(I) = A(I) * SIN(FLOAT(I))
            B(I) = B(I) * COS(FLOAT(I))
         ENDIF
   20 CONTINUE

      DO 30 I=1,100
         IF(.NOT.L(I)) THEN
            A(I) = A(I) * SIN(FLOAT(I))
            B(I) = B(I) * COS(FLOAT(I))
         ENDIF
   30 CONTINUE

      WRITE(6,100) A
      WRITE(6,100) B
  100 FORMAT(1H ,10F7.3)
      STOP
      END
