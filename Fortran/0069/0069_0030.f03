  implicit none
  integer,allocatable :: int_alo01(:)
  integer :: int01(1:3)
  int01 = 1
  allocate(int_alo01(3),source=int01(1:3))
  int_alo01(1:3) = int01(1:3)
  print *,'pass'
end
