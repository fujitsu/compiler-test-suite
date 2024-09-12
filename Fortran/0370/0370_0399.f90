
module mod
  type tp
     integer(kind=4) :: ia = 1
     integer(kind=4) :: ib = 2
  end type tp

  integer(kind=4),allocatable::ma1
  type(tp):: mt1
  type(tp),allocatable:: mt2
end module mod

program main
  use mod

  allocate(ma1)
  ma1=10

  allocate(mt2)
  mt2%ia=33
  
  print *, ma1
  print *, mt1%ib
  print *, mt2%ia  
  print *, mt2%ib

end program main

