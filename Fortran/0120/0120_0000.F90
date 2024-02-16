module mod
  INTEGER(kind=4)::moda(65535),modb(65535)
  integer::n
end module mod

subroutine sub()
  use mod
  do i=1, n
     moda(i) = modb(i)
  end do
end subroutine sub

subroutine sub1(arga, argb, n)
  real(kind=8)::arga(1024),argb(1024)
  integer::n

  do i=1, n
     arga(i) = sin(argb(i))
  end do
end subroutine sub1

subroutine sub2(arga, argb)
  use mod
  real(kind=4)::arga(1),argb(1)

  do i=1, n
     arga(i) = sin(argb(i))
  end do
end subroutine sub2

subroutine sub3(arga, argb)
  use mod
  integer(kind=8)::arga(:),argb(:)

  do i=1, n
     arga(i) = arga(i)*argb(i)
  end do
end subroutine sub3

subroutine sub4(arga, argb)
  use mod
  integer(kind=4)::arga(*),argb(*)

  do i=1, n
     arga(i) = arga(i)+argb(i)
  end do
end subroutine sub4

subroutine sub5(arga, argb)
  use mod
  logical(kind=4)::arga(511),argb(1023)

  do i=1, n
     arga(i) = arga(i).or.argb(i)
  end do
end subroutine sub5

subroutine sub8(arga, argb)
  use mod
  logical(kind=4)::arga(512),argb(1024)

  do i=1, n
     arga(i) = arga(i).or.argb(i)
  end do
end subroutine sub8

subroutine sub6()
  use mod
  real(kind=4),dimension(1:1000)::a
  real(kind=8),dimension(1:1001)::b
  integer::m
  common /mydata/ a,b,m
  
  do i=1,m
     a(i) = i
     b(i) = i+1
  end do
end subroutine sub6

subroutine sub7(m)
  integer,parameter::n=1024
  integer::m
  real(kind=8),allocatable::a(:)
  real(kind=8),allocatable::b(:)
  allocate(a(n),b(n))
  
  do i=1,m
     b(i) = i*1.1
     a(i) = b(i)
  end do
end subroutine sub7

program main
  print *, "OK"
end program main
