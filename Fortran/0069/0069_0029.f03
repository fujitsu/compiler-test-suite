  implicit none
  integer,allocatable :: int_alo01(:)
  integer :: int01(10:12)
  int01 = 1
  allocate(int_alo01(-20:-18),source=int01(10:12))
  int_alo01(-20:-18) = int01(10:12)
  print *,'pass'
end
