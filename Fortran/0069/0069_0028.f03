  implicit none
  integer,allocatable :: int_alo01(:)
  integer :: int01(-1:1)
  int01 = 1
  allocate(int_alo01(-1:1),source=int01(-1:1))
  int_alo01(-1:1) = int01(-1:1)
  print *,'pass'
end
