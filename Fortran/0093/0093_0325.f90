PROGRAM main
IMPLICIT NONE
COMPLEX::salary = (12.34,6.21)
REAL :: pay, tax
pay = salary%re
tax = salary%im
CALL print_pay
CONTAINS
SUBROUTINE print_pay
if(pay .ne. 12.34) print*,101
if(tax .ne. 6.21) print*,102
CALL change_pay
if (pay .ne.28.55) print*,103 
if (tax .ne.17.42) print*,104
PRINT*,"PASS"
END SUBROUTINE print_pay
SUBROUTINE change_pay
pay = salary%re+salary%im+10;
tax = salary%im+salary%im+5;
END SUBROUTINE change_pay
end
