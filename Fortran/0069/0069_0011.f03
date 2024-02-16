  implicit none
  integer,allocatable :: int_alo01(:,:,:)
  allocate(int_alo01(3,3,3),source=1)
  int_alo01 = 1
  print *,'pass'
end
