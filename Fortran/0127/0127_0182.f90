subroutine sub1()
  real(kind=4),dimension(50) :: a
  real(kind=4),dimension(50) :: d1,d2
  equivalence(a,d2)

  do k=1,50
     a(k)=k
     d1(k)=k
  enddo

  do j=2,50
     a(j) = a(j-1) + d2(j)
     d1(j) = d1(j) + a(j)
  enddo

  print*, a(10)
  print*, d1(1)
  print*, d1(2)
  return
end subroutine sub1

subroutine sub1_test()
  real(kind=4),dimension(50) :: a
  real(kind=4),dimension(50) :: d1,d2
  equivalence(a,d2)

  do k=1,50
     a(k)=k
     d1(k)=k
  enddo

  do j=2,50
     a(j) = a(j-1) + d2(j)
     d1(j) = d1(j) + a(j)
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
