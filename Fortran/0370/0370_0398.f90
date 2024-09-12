
module mod
  integer(kind=4),allocatable::ma1
  integer(kind=4),pointer::mp1
  integer(kind=4),pointer::mp2=>NULL()
  integer(kind=4)::s1=100
end module mod

program main
  use mod
  integer(kind=4),target::t1=100

  allocate(ma1)
  ma1=10
  mp1=>t1
  mp2=>t1
  
  print *, ma1
  print *, mp1
  print *, mp2
end program main

