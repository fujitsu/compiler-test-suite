MODULE mod1
INTERFACE
SUBROUTINE extsub(d1,d2)
INTEGER :: d1
REAL :: d2
END SUBROUTINE
END INTERFACE

INTERFACE gnr
  PROCEDURE extsub 
END INTERFACE
END MODULE

PROGRAM main
USE mod1
integer::num1
real::num2
num1 = 5.0
num2 = 7.0
call sub(extsub)
IF(num1 .EQ. 7 .AND. num2 .EQ. 9.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
contains
subroutine sub(dmy)
procedure(extsub),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,101
call dmy(num1,num2)
end subroutine
end
SUBROUTINE extsub(d1,d2)
INTEGER :: d1
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
END SUBROUTINE
