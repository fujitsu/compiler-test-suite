 call s1
 print *,'pass'
 end
 subroutine s1

   IMPLICIT NONE

   INTEGER, PARAMETER :: N = 100000
   REAL, DIMENSION (N) :: X
   REAL :: NUMBER
   INTEGER :: I

   TYPE NODE
      REAL :: VALUE
      TYPE (NODE), POINTER :: LEFT, RIGHT
   END TYPE NODE

   CALL RANDOM_NUMBER (X)
   write(1,*) OUT_OF_ORDER()
   CALL BIN_SORT
   write(1,*) OUT_OF_ORDER()

CONTAINS

   SUBROUTINE BIN_SORT

   TYPE (NODE), POINTER :: T

      NULLIFY (T)
      DO I = 1, N
         NUMBER = X (I)
         CALL INSERT (T)
      END DO

      write(1,*) DEPTH (T)

      I = 1
      CALL EXTRACT (T)

   END SUBROUTINE BIN_SORT

   RECURSIVE SUBROUTINE INSERT (T)

      TYPE (NODE), POINTER :: T

      IF (.NOT. ASSOCIATED (T)) THEN
         ALLOCATE (T)
         T % VALUE = NUMBER
         NULLIFY (T % LEFT)
         NULLIFY (T % RIGHT)
      ELSE IF (NUMBER < T % VALUE) THEN
         CALL INSERT (T % LEFT)
      ELSE
         CALL INSERT (T % RIGHT)
      END IF

   END SUBROUTINE INSERT

   RECURSIVE SUBROUTINE EXTRACT (T)

      TYPE (NODE), POINTER :: T

      IF (ASSOCIATED (T)) THEN
         CALL EXTRACT (T % LEFT)
         X (I) = T % VALUE; I = I+1
         CALL EXTRACT (T % RIGHT)
      END IF

   END SUBROUTINE EXTRACT

   FUNCTION OUT_OF_ORDER ()

      INTEGER :: OUT_OF_ORDER

      OUT_OF_ORDER = 0
      DO I = 1, N-1
         IF (X (I) > X (I+1)) THEN
            OUT_OF_ORDER = OUT_OF_ORDER + 1
         END IF
      END DO

   END FUNCTION OUT_OF_ORDER

   RECURSIVE FUNCTION DEPTH (T) RESULT (RESULT)

      TYPE (NODE), POINTER :: T
      INTEGER :: RESULT

      IF (ASSOCIATED (T)) THEN
         RESULT = 1 + MAX (DEPTH (T % LEFT), DEPTH (T % RIGHT))
      ELSE
         RESULT = 0
      END IF

   END FUNCTION DEPTH

END
