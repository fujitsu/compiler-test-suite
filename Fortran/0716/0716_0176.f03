  implicit none
  integer,allocatable :: int_alo01(:)
  integer :: int01(1:300)
  int01 = 1
  allocate(int_alo01(1:100),source=int01(100:200))
  print *,'pass'
end
