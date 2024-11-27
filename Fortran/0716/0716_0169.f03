  integer,allocatable :: int_alo01(:,:,:)
  integer :: int01(9,9,10)

  int01 = 1
  allocate(int_alo01(1:9,1:9,1:9),source=int01)
  int_alo01 = 1
end
