  integer,allocatable :: int_alo01(:)
  integer :: int01(9)

  int01 = 1
  allocate(int_alo01(1:10),source=int01(1:9))
  int_alo01 = 1
end