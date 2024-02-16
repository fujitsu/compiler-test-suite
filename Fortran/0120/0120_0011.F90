module mod
  real(8),dimension(4440) :: a,b
  integer::n
end module mod

#define min_value 3330
#define avg_value 2220
#define max_value 1110

subroutine sub0()
  use mod
  do i=1,n
     a(i) = sqrt(b(i))
  enddo
end subroutine sub0
subroutine sub1()
  use mod
  do i=1,n
     a(i) = sqrt(b(i))
  enddo
end subroutine sub1
subroutine sub2()
  use mod
  do i=1,n
     a(i) = sqrt(b(i))
  enddo
end subroutine sub2
subroutine sub3()
  use mod
  do i=1,n
     a(i) = sqrt(b(i))
  enddo
end subroutine sub3

program main
  print *,"OK"
end program main
