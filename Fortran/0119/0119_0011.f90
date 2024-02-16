program main
  integer(kind=8),parameter :: n=100
  real(kind=8),dimension(1:n) :: a,b,c,d

  a = 0.
  b = 1.
  c = 2.
  d = 3.

  call sub1(a,b,c,d,n)
  call sub2(a,b,c,d,n)
  call sub3(a,b,c,d,n)
  call sub4(a,b,c,d,n)
  call sub5(a,b,c,d,n)
  call sub6(a,b,c,d,n)
  
  do i=1,n
     if (a(i) .ne. 5.) then
        print *, "ng"
     endif
  enddo
  print *, "ok"

end program main

subroutine sub1(a,b,c,d,n)
  integer(kind=8) :: n
  real(8),dimension(1:n) :: a,b,c,d


  do i=1,n
     a(i) = b(i) * c(i) + d(i)
  enddo

end subroutine sub1

subroutine sub2(a,b,c,d,n)
  integer(kind=8) :: n
  real(8),dimension(1:n) :: a,b,c,d


  do i=1,n
     a(i) = b(i) * c(i) + d(i)
  enddo

end subroutine sub2


subroutine sub3(a,b,c,d,n)
  integer(kind=8) :: n
  real(8),dimension(1:n) :: a,b,c,d

  do i=1,n
     a(i) = b(i) * c(i) + d(i)
  enddo

end subroutine sub3


subroutine sub4(a,b,c,d,n)
  integer(kind=8) :: n
  real(8),dimension(1:n) :: a,b,c,d

  do i=1,n
     a(i) = b(i) * c(i) + d(i)
  enddo

end subroutine sub4

subroutine sub5(a,b,c,d,n)
  integer(kind=8) :: n
  real(8),dimension(1:n) :: a,b,c,d


  a = b*c+d

end subroutine sub5

subroutine sub6(a,b,c,d,n)
  integer(kind=8) :: n
  real(8),dimension(1:n) :: a,b,c,d


  a = b*c+d

end subroutine sub6
