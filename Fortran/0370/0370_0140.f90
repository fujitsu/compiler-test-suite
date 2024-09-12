module mod
  integer(kind=8),target         :: t1 = 3
  integer(kind=8),target,bind(c) :: t2 = 5
  integer(kind=8),pointer :: p1 => t2
end module mod

program main
  use mod
  integer(kind=8),target :: t3 = 10
  integer(kind=8),pointer :: p2 => t2
  print *,t1
  print *,t2
  print *,t3
  print *,p1
  print *,p2
end program


