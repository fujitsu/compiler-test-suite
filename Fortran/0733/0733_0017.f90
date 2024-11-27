MODULE Overload
IMPLICIT NONE

INTERFACE OPERATOR (//)
   MODULE PROCEDURE Join_Char_Int
END INTERFACE

PUBLIC  :: OPERATOR (//)
PRIVATE :: Join_Char_Int

CONTAINS

FUNCTION Join_Char_Int (a, x) RESULT (ax)
CHARACTER(*), INTENT(IN) :: a
INTEGER,      INTENT(IN) :: x
CHARACTER(LEN(a)+2) :: ax

ax( 1:LEN(a) ) = a
ax( LEN(a)+1: ) = '1'//ACHAR (48 + ABS (MOD (x, 10)))

RETURN
END FUNCTION Join_Char_Int

END MODULE Overload

program main
use overload
implicit none
integer :: x
logical :: y

do x=11,19
   open (unit=x,file='myfile' // x)
   write(x,*)x
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
do x = 11, 19
   close (x,status='delete')
end do
print *,'pass'

stop
end program main
