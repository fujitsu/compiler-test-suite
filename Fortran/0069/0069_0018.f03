  implicit none
  integer,allocatable :: int_alo01
  integer :: int01(10)

  int01 = 1
  allocate(int_alo01,source=int01(3))
  int_alo01 = int01(3)
  print *,'pass'
end
