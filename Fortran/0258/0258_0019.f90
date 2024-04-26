PROGRAM test
  LOGICAL,pointer:: a(:,:)
  allocate(a(2,2))
  a(1,1) = .TRUE.
  a(1,2) = .TRUE.
  a(2,1) = .FALSE.
  a(2,2) = .FALSE.
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  LOGICAL ,target :: a(:,:)
  LOGICAL :: b
  b = PARITY(a)
  if(b.neqv..FALSE.)print*,101
  end subroutine sub
END PROGRAM
