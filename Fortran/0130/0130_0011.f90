subroutine test1(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test1

subroutine test2(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test2

subroutine test3(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test3

subroutine test4(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test4

subroutine test5(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test5

subroutine test6(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test6

subroutine test7(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test7

subroutine test8(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test8

subroutine test9(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test9

subroutine test10(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test10

subroutine test11(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test11

subroutine test12(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, n
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test12

subroutine test13(a,b,c,d,e)
  real(8),dimension(100) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, 100
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test13

subroutine test14(a,b,c,d,e)
  real(8),dimension(2000) :: a,b,c,d,e
  real(8) :: tmp
  do i=1, 2000
     tmp = a(i) + b(i) + c(i)
     e(i) = tmp + c(i) +d(i)
  end do
end subroutine test14

program main
  integer,parameter:: n=2000
  real(8),dimension(n) :: a,b,c,d,e
  call init(a,b,c,d,e,n)
  call test1(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test2(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test3(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test4(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test5(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test6(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test7(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test8(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test9(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test10(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test11(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test12(a,b,c,d,e,n)
  call result(e,n)

  call init(a,b,c,d,e,n)
  call test13(a,b,c,d,e)
  call result(e,101)

  call init(a,b,c,d,e,n)
  call test14(a,b,c,d,e)
  call result(e,n)

end program main

subroutine init(a,b,c,d,e,n)
  real(8),dimension(n) :: a,b,c,d,e
  do i=1,n
     a(i) = i
     b(i) = i+n
     c(i) = i+n*2
     d(i) = i+n*3
     e(i) = i+n*4
  enddo
end subroutine init

subroutine result(e,n)
  real(8),dimension(n) :: e
  print *,e(1), e(2), e(n/2), e(n-1), e(n)
end subroutine result
