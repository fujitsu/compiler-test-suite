PROGRAM MAIN

type x
  INTEGER, DIMENSION(:, :) , ALLOCATABLE :: a
end type
type(x)::v

  ALLOCATE(v%a(100, 3))

  CALL f(10, v%a(:10, :))
  if (v%a(2, 3)/=1)print *,'error-01'
print *,'pass'

CONTAINS

  SUBROUTINE f(n, a)
    INTEGER :: n
    INTEGER, DIMENSION(n, 3) :: a
    a(2, 3) = 1
  END SUBROUTINE f
END PROGRAM MAIN
