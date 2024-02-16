  implicit none
  integer,allocatable :: int_alo01(:)
  integer :: int01(0:0)
  int01 = 1
  allocate(int_alo01(0:0),source=int01(0:0))
  int_alo01(0:0) = int01(0:0)
  print *,'pass'
end
