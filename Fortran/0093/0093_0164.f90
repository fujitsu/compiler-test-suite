PROGRAM main
implicit complex (C)
Cmp%re = 3.14
Cmp%im = 4.56

if ( Cmp .ne. (3.14,4.56)) print*,101
PRINT*,"PASS"
end
