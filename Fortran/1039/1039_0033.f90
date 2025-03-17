PROGRAM MAIN

  INTEGER, DIMENSION(100, 3) :: a

  CALL f(10, a(:10, :))
  if (a(2, 3)/=1)print *,'error'
print *,'pass'

CONTAINS

  SUBROUTINE f(n, a)

    INTEGER :: n
    INTEGER, DIMENSION(n, 3) :: a

    a(2, 3) = 1

  END SUBROUTINE f

END PROGRAM MAIN
