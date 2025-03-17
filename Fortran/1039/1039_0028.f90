PROGRAM MAIN

type x
  INTEGER :: a
  INTEGER :: b(2,2)
end type
type(x),allocatable::v(:)

  ALLOCATE(v(100))
  CALL f( v(:10)%a)
  if (v(2)%a/=1)print *,'error'
  CALL f( v(:10)%b(2,2))
  if (v(2)%b(2,2)/=1)print *,'error-2'
print *,'pass'

CONTAINS

  SUBROUTINE f( a)

    INTEGER, DIMENSION( 3) :: a

    a(2) = 1

  END SUBROUTINE f

END PROGRAM MAIN
