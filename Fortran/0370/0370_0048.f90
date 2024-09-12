module str_mod
  integer,allocatable :: val
end module str_mod

program main
  use str_mod
  allocate(val)
  val=1
  print *, val
end program main
