  implicit none
  integer,allocatable :: int_alo01(:)
  integer :: int01(1:200)
  int01 = 1
  allocate(int_alo01(1:100),source=int01(1:200:2))
  int_alo01(1:100) = int01(1:200:2)
  print *,'pass'
end
