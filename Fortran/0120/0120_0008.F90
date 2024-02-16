module mod
  real(8),dimension(31) :: a,b
  integer::n
end module mod

#define min_value 8
#define avg_value 8
#define max_value 8

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

program main
  print *,"OK"
end program main
