module mod
  real(8),dimension(444) :: a,b
  integer::n
end module mod

#define min_value 111
#define avg_value 222
#define max_value 333

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
