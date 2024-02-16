subroutine sub1()
  real(kind=8),dimension(50) :: a
  real(kind=8),dimension(50) :: d1,d2
  integer(kind=4) :: n
  data n/50/

  do k=1,50
     a(k)=k
     d1(k)=k
     d2(k)=k
  enddo

  do j=2,50
     a(j) = a(j-1) + d2(j)
     d1(n) = d1(n) + a(j)
     n = n - 1
  enddo

  print*, a(10)
  print*, d1(1)
  print*, d1(2)
  return
end subroutine sub1

subroutine sub1_test()
  real(kind=8),dimension(50) :: a
  real(kind=8),dimension(50) :: d1,d2
  integer(kind=4) :: n
  data n/50/

  do k=1,50
     a(k)=k
     d1(k)=k
     d2(k)=k
  enddo

  do j=2,50
     a(j) = a(j-1) + d2(j)
     d1(n) = d1(n) + a(j)
     n = n - 1
  enddo

  print*, a(10)
  print*, d1(1)
  print*, d1(2)
  return
end subroutine sub1_test

program main
call sub1()
call sub1_test()
end program
