
module mod
  integer(kind=4),allocatable::ma1
  integer(kind=4),pointer::mp1
  integer(kind=4),pointer::mp2=>NULL()
end module mod

program main
  use mod
  integer(kind=4),target::t1=100
  integer(kind=4),allocatable::a1
  integer(kind=4),pointer::p1
  integer(kind=4),pointer::p2=>NULL()

  mp1=>t1
  mp2=>t1
  p1=>t1
  p2=>p1

  allocate(ma1)
  allocate(a1)
  ma1=3
  a1 =6
  
  print *, t1
  print *, ma1
  print *, mp1
  print *, mp2
  print *, a1
  print *, p1
  print *, p2
end program main

