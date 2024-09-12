  integer,allocatable :: int_alo01(:,:,:)
  integer :: int01(2:10,100:1,1:2)
  allocate(int_alo01(2:10,100:1,1:2),source=int01(2:10,100:1,1:2))
  print *,'pass'
end
