      PROGRAM MAIN
      INTEGER*2 A(10)
      LOGICAL*1 B(10)
      DATA B/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,
     +       .TRUE.,.FALSE.,.TRUE./
C
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) +I
         IF(B(I)) THEN
            A(I) = I
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10I7)
      STOP
      END
