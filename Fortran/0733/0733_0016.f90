MODULE Strings
IMPLICIT NONE

INTEGER, PRIVATE :: i
INTEGER, PRIVATE, PARAMETER :: tenpower( 9 ) = (/(10 ** i, i = 1, 9)/)

CONTAINS

FUNCTION To_String (x) RESULT (a)
INTEGER, INTENT(IN) :: x
CHARACTER(LEN = 1 - MIN (0,  MAX (x, -1)) +                    &
                    MAX (1 * MIN (ABS (x) / tenpower( 1 ), 1), &
                         2 * MIN (ABS (x) / tenpower( 2 ), 1), &
                         3 * MIN (ABS (x) / tenpower( 3 ), 1), &
                         4 * MIN (ABS (x) / tenpower( 4 ), 1), &
                         5 * MIN (ABS (x) / tenpower( 5 ), 1), &
                         6 * MIN (ABS (x) / tenpower( 6 ), 1), &
                         7 * MIN (ABS (x) / tenpower( 7 ), 1), &
                         8 * MIN (ABS (x) / tenpower( 8 ), 1), &
                         9 * MIN (ABS (x) / tenpower( 9 ), 1))) :: a
INTEGER :: i, w, z

a = ''
i = LEN (a)
w = ABS (x)
DO WHILE ( w > 0 )
   z = MOD (w, 10)
   w = w / 10
   a( i:i ) = ACHAR (48 + z)
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

program main
use strings
implicit none
integer i
logical y
do i = 11,20
   open (unit=i,file='myfile'//To_String (i))
end do

do i = 11, 20
   write(i,*) i
end do

   inquire(file='myfile11',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile12',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile13',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile14',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile15',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile16',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile17',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile18',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile19',opened=y);if (.not.y)write(6,*) "NG"
   inquire(file='myfile20',opened=y);if (.not.y)write(6,*) "NG"
do i = 11, 20
   close (i,status='delete')
end do
print *,'pass'
end program main
