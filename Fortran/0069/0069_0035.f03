  implicit none
  integer :: var01
  integer,allocatable :: int_alo01(:,:)
  integer :: int01(1:100,10)
  int01 = 1
  var01 = 10
  allocate(int_alo01(1:100,10),source=int01(1:100,1:var01))
  int_alo01(1:100,1:10) = int01(1:100,1:var01)
  print *,'pass'
end
