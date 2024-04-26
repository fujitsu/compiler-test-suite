PROGRAM test
  CLASS(*),allocatable:: a(:,:)
  integer:: b(2),x,y
  allocate(integer(kind=2):: a(2,2))
  x=2
  y=5
  select type(a)
  type is (integer(kind=2))
  a(1,1) = 3
  a(1,2) = 1
  a(2,1) = 11
  a(2,2) = 3
  b = IALL(a,3*x-y,a>2)
  class default
  print*,103
  end select
  if(b(1).ne.3)print*,101
  if(b(2).ne.3)print*,102
  print*,"pass"
END PROGRAM
