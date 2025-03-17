PROGRAM MAIN

  INTEGER, DIMENSION(:, :) , ALLOCATABLE :: a
  INTEGER, DIMENSION(100, 3)  :: b

  m=10
  ALLOCATE(a(100, 3))
  CALL f(a(:m, :))
  if (a(2, 3)/=1)print *,'error-1'
  CALL f(b(:10, :))
  if (b(2, 3)/=1)print *,'error-2'
print *,'pass'

CONTAINS

  SUBROUTINE f(a)
    INTEGER, DIMENSION(10,3) :: a
    a(2, 3) = 1
  END SUBROUTINE f
END PROGRAM MAIN
