module mod
  integer(kind=4),target :: t1(-3:1) = (/11,12,13,14,15/)
  integer(kind=4),target :: t2(0:4) = 10
  integer(kind=4),target :: t3(-3:-1) = 3
  integer(kind=4),pointer,dimension(:) :: pa1 => t1
  integer(kind=4),pointer,dimension(:) :: pa2 => t2
  integer(kind=4),pointer,dimension(:) :: pa3 => t3
  integer(kind=4),pointer,dimension(:) :: pr1 => t1(-3:-2)
  integer(kind=4),pointer,dimension(:) :: pr2 => t2(2:4)
  integer(kind=4),pointer,dimension(:) :: pr3 => t3(-2:-1)
  integer(kind=4),pointer :: ps1 => t1(-3)
  integer(kind=4),pointer :: pe1 => t1(1)
  integer(kind=4),pointer :: ps2 => t2(0)
  integer(kind=4),pointer :: pe2 => t2(4)
  integer(kind=4),pointer :: ps3 => t3(-3)
  integer(kind=4),pointer :: pe3 => t3(-1)
end module mod

program main
  use mod

  print *, pa1
  print *, pa2
  print *, pa3

  print *, pr1
  print *, pr2
  print *, pr3

  print *, ps1,pe1
  print *, ps2,pe2
  print *, ps3,pe3
end program
