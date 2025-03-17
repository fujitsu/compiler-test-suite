PROGRAM MAIN

  INTEGER, DIMENSION(:,:) , ALLOCATABLE :: a

  ALLOCATE(a(3,100))

  CALL f(10, a(3,91:))
  if (a(3,92)/=1)print *,'error-031'
print *,'pass'

CONTAINS

  SUBROUTINE f(n, a)
    INTEGER :: n
    INTEGER, DIMENSION(n) :: a
    a(2) = 1
  END SUBROUTINE f

END PROGRAM MAIN
