IMPLICIT NONE

integer :: a
a=2

call ss(a)
print *,'pass'

contains
subroutine ss(d)
integer,intent(in) :: d
if (  a/= 2) print *,100,a
if (d+a/= 4) print *,101,d+a
end subroutine
END
