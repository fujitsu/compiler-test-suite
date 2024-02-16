subroutine sub1()
  integer(kind=4) :: j,n
  real(kind=8),dimension(50) :: a,b,c

  do k=1,50
     a(k) = 1.0
     b(k) = 2.0
     c(k) = 3.0
  enddo

  j = 51

  do k=1,50,2
    n = j - 1
    a(n) = b(k)
    j = n - 1
    a(j) = c(k)
  enddo

  print*, a(1)
  print*, a(2)
  print*, n
  return
end subroutine sub1

program main
  call sub1()
end program main
