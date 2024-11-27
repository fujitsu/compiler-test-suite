IMPLICIT NONE
integer :: x=12345,y

call subwrite(x)
call subread(y)

if (y.ne.12345) write(6,*) "NG"

print *,'pass'

end

subroutine subwrite(x)
IMPLICIT NONE
integer x

open (unit=10, file='qwertyuiop.dat',status='UNKNOWN')

write (10,*) x

close(10,status='keep')

end subroutine

subroutine subread(y)
IMPLICIT NONE
integer y

open (unit=10, file='qwertyuiop.dat',status='UNKNOWN')

flush(10)
read (10,*) y

close(10,status='delete')

end subroutine
