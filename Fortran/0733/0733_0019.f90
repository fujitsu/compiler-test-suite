MODULE Strings
   IMPLICIT NONE
   INTEGER, PRIVATE :: i
   INTEGER, PRIVATE, PARAMETER :: tenpower( 9 ) = (/(10 ** i, i = 1,  9)/)
   CHARACTER (LEN=1), PARAMETER, PRIVATE :: Digits(0:9) = (/ '0', '1' , '2', &
                                  '3', '4', '5', '6', '7', '8', '9' /)

CONTAINS

   FUNCTION To_String (x) RESULT (a)
      INTEGER, INTENT(IN) :: x
      CHARACTER(LEN = 1 - MIN (0,  MAX (x, -1)) +                &
                      MAX (1 * MIN (ABS (x / tenpower( 1 )), 1), &
                           2 * MIN (ABS (x / tenpower( 2 )), 1), &
                           3 * MIN (ABS (x / tenpower( 3 )), 1), &
                           4 * MIN (ABS (x / tenpower( 4 )), 1), &
                           5 * MIN (ABS (x / tenpower( 5 )), 1), &
                           6 * MIN (ABS (x / tenpower( 6 )), 1), &
                           7 * MIN (ABS (x / tenpower( 7 )), 1), &
                           8 * MIN (ABS (x / tenpower( 8 )), 1), &
                           9 * MIN (ABS (x / tenpower( 9 )), 1))) :: a 
      INTEGER :: i, w, z

      a = ''
      i = LEN (a)
      w = x
      DO WHILE ( w /= 0 )
         z = ABS(MOD (w, 10))
         w = w / 10
         a( i:i ) = Digits(z)
         i = i - 1
      END DO
      IF ( x == 0 ) THEN
         a( i:i ) = '0'
      ELSE IF ( x < 0 ) THEN
         a( i:i ) = '-'
      END IF

      RETURN
   END FUNCTION To_String

END MODULE Strings
use Strings
print *,'pass'
end
