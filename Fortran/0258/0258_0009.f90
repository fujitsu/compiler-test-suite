PROGRAM test
  LOGICAL(kind=2),allocatable :: a(:,:)
  allocate(a(2,2))
  a(1,1) = .TRUE.
  a(1,2) = .FALSE.
  a(2,1) = .TRUE.
  a(2,2) = .FALSE.
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  LOGICAL(kind=2) :: a(2,*)
  LOGICAL :: b
  b = PARITY(a(:,2))
  if(b.neqv. .FALSE.)print*,101
  end subroutine sub
END PROGRAM
