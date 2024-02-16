  implicit none
  integer,allocatable :: int_alo01(:)
  allocate(int_alo01(3),source=(/1,2,3/))
  int_alo01 = (/1,2,3/)
  print *,'pass'
end
