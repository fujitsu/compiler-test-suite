  implicit none
  integer,allocatable :: int_alo01

  allocate(int_alo01,source=1)
  int_alo01 = 1
  print *,'pass'
end
