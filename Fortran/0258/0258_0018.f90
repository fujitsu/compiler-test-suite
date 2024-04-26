PROGRAM test
  CLASS(*),allocatable:: a(:,:)
  logical :: b(2)
  integer :: x
  allocate(logical(kind=2):: a(2,2))
  x=2
  select type(a)
  type is (logical(kind=2))
  a(1,1) = .true.
  a(1,2) = .false.
  a(2,1) = .true.
  a(2,2) = .true.
  b = PARITY(mask = a,dim = x)
  class default
  print *, 103
  end select
  if(b(1).neqv. .TRUE.)print*,101
  if(b(2).neqv. .FALSE.)print*,102
  print*,"pass"
END PROGRAM
