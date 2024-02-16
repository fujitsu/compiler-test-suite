  implicit none
  integer,allocatable :: int_alo01(:)
  integer :: int01(6)
  int01 = 1
  allocate(int_alo01(0:5),source=int01(6))
  int_alo01(0:5) = int01(6)
  print *,'pass'
end
