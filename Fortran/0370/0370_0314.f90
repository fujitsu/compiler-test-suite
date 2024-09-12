
module mod
  integer(kind=4),target,public :: m1
  integer(kind=4),target,protected :: m2
  integer(kind=4),target,private :: m3
  integer(kind=4),pointer,public :: pp1
  integer(kind=4),pointer,public :: pp2
  integer(kind=4),pointer,public :: pp3
  integer(kind=4),pointer,protected :: pd1
  integer(kind=4),pointer,protected :: pd2
  integer(kind=4),pointer,protected :: pd3
  integer(kind=4),pointer,private :: pv1
  integer(kind=4),pointer,private :: pv2
  integer(kind=4),pointer,private :: pv3
  data m1 /1/
  data m2 /2/
  data m3 /3/
  data pp1 /m1/
  data pp2 /m2/
  data pp3 /m3/
  data pd1 /m1/
  data pd2 /m2/
  data pd3 /m3/
  data pv1 /m1/
  data pv2 /m2/
  data pv3 /m3/
  
end module mod

program top
  use mod
  implicit none
  integer(kind=4),target :: aa = 99
  
  print *, pp1
  print *, pp2
  print *, pp3

  print *, pd1
  print *, pd2
  print *, pd3

  pp1=>aa
  pp2=>aa
  pp3=>aa
  print *, pp1
  print *, pp2
  print *, pp3

  
end program top
