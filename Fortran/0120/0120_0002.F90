module mod
  INTEGER(kind=4)::moda(65535),modb(65535)
  integer::n
end module mod

subroutine sub()
  use mod
  moda(:) = modb(:)
end subroutine sub

subroutine sub1(arga, argb, n)
  real(kind=8)::arga(1024),argb(1024)
  integer::n

  arga(:) = sin(argb(:))
end subroutine sub1

subroutine sub2(arga, argb)
  use mod
  real(kind=4)::arga(1),argb(1)

  arga(:) = sin(argb(:))
end subroutine sub2

subroutine sub3(arga, argb)
  use mod
  integer(kind=8)::arga(:),argb(:)

  arga(:) = arga(:)*argb(:)
end subroutine sub3

subroutine sub5(arga, argb)
  use mod
  logical(kind=4)::arga(511),argb(1023)

  arga(:) = arga(:).or.argb(1:511)
end subroutine sub5

subroutine sub8(arga, argb)
  use mod
  logical(kind=4)::arga(512),argb(1024)

  arga(:) = arga(:).or.argb(1:512)
end subroutine sub8

subroutine sub6()
  use mod
  real(kind=4),dimension(1:1000)::a
  real(kind=8),dimension(1:1001)::b
  integer::m
  common /mydata/ a,b,m

  a(:) = a(:) + b(1:1000)
end subroutine sub6

subroutine sub7(m)
  integer,parameter::n=1024
  integer::m
  real(kind=8),allocatable::a(:)
  real(kind=8),allocatable::b(:)
  allocate(a(n),b(n))
  
  a(:) = a(:) + b(:)
end subroutine sub7

program main
  print *, "OK"
end program main
