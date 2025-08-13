MODULE arr
INTEGER, Parameter, DIMENSION(4) :: arr1 = (/ 1, 2, 3, 4 /)
END MODULE arr

MODULE modb
USE arr
IMPLICIT NONE
CONTAINS
  SUBROUTINE subA()
    IMPLICIT NONE
    write(20,*) 'subA: arr1 = ', arr1
  END SUBROUTINE subA
  SUBROUTINE subB()
    USE arr
    IMPLICIT NONE
    write(20,*) 'subB: arr1 = ', arr1
  END SUBROUTINE subB
END MODULE modb
PROGRAM MAIN
USE modB
IMPLICIT NONE
CALL subA()
CALL subB()
call chk
print *,'pass'
END PROGRAM MAIN
subroutine chk
character*40 r
rewind 20
read(20,'(a)') r
if (index(r,'subA: arr1 =  1 2 3 4')==0)write(6,*) "NG"
read(20,'(a)') r
if (index(r,'subB: arr1 =  1 2 3 4')==0)write(6,*) "NG"
end
