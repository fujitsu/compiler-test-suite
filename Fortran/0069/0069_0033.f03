  implicit none
  integer,allocatable :: int_alo01(:,:,:,:,:)
  integer :: int01(1:3,-1:1,2:100,100:1,1:200)
  int01 = 1
  allocate(int_alo01(1:3,-1:1,2:100,100:1,1:200),source=int01(1:3,-1:1,2:100,100:1,1:200))
  int_alo01(1:3,-1:1,2:100,100:1,1:200) = int01(1:3,-1:1,2:100,100:1,1:200)
  print *,'pass'
end
