  implicit none
  integer,allocatable :: int_alo01(:,:)
  integer :: int01
  int01 = 123
  allocate(int_alo01(3,3),source=int01)
  int_alo01 = int01
  print *,'pass'
end
