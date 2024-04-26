      PROGRAM MAIN
      TYPE::A
      SEQUENCE
      REAL W,Z,G
      END TYPE
      INTEGER*4 S(4:4)
      TYPE(A) ::V,C
      DATA S/1*47/
      EQUIVALENCE (V,C)
      V%Z=-1
      C%Z=1
      IF ( .FALSE. ) THEN
      DO I=1,10
         S(4::1)=1
         C%W=1
      END DO
      END IF
      CALL FOO(V%Z)
      STOP
      END PROGRAM MAIN

      subroutine FOO(BAR)
      REAL BAR
      PRINT *,BAR
      end subroutine
