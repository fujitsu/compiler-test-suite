subroutine sub1(a,b,c,d,e,f,n)
  real(8),dimension(1:n) :: a,b,c,d,e,f

  do i=1,n
     a(i) = b(i)
  enddo

  do i=1,n
     c(i) = d(i)
  enddo

  do i=1,n
     e(i) = f(i)
  enddo
end subroutine sub1

subroutine sub2(a,b,c,d,e,f,n)
  real(8),dimension(1:n) :: a,b,c,d,e,f

  do i=1,12
     a(i) = b(i)
  enddo

  do i=1,13
     c(i) = d(i)
  enddo

  do i=1,14
     e(i) = f(i)
  enddo
end subroutine sub2

subroutine sub3(a,b,c,d,e,f,n)
  real(8),dimension(1:n) :: a,b,c,d,e,f

  do i=1,12
     a(i) = b(i)
  enddo

  do i=1,n
     c(i) = d(i)
  enddo

  do i=1,14
     e(i) = f(i)
  enddo
end subroutine sub3

subroutine init(a,b,c,d,e,f,n)
  real(8),dimension(1:n) :: a,b,c,d,e,f

  do i=1,n
     a(i) = 0.
     b(i) = 1.
     c(i) = 0.
     d(i) = 1.
     e(i) = 0.
     f(i) = 1.
  enddo

end subroutine init

subroutine check(a,b,c,d,e,f,n,na,nc,ne)
  real(8),dimension(1:n) :: a,b,c,d,e,f

  do i=1,na
     if (a(i) .ne. b(i)) then
        print *, "ng : N =", na
     endif
  enddo

  do i=1,nc
     if (c(i) .ne. d(i)) then
        print *, "ng : N =", nc
     endif
  enddo

  do i=1,ne
     if (e(i) .ne. f(i)) then
        print *, "ng : N =", ne
     endif
  enddo

end subroutine check


program main
  integer,parameter :: n = 100
  real(8),dimension(1:n) :: a1,b1,c1,d1,e1,f1
  real(8),dimension(1:n) :: a2,b2,c2,d2,e2,f2
  real(8),dimension(1:n) :: a3,b3,c3,d3,e3,f3

  call init(a1,b1,c1,d1,e1,f1,n)
  call init(a2,b2,c2,d2,e2,f2,n)
  call init(a3,b3,c3,d3,e3,f3,n)

  call sub1(a1,b1,c1,d1,e1,f1,n)
  call sub2(a2,b2,c2,d2,e2,f2,n)
  call sub3(a3,b3,c3,d3,e3,f3,n)

  call check(a1,b1,c1,d1,e1,f1,n,n,n,n)
  call check(a2,b2,c2,d2,e2,f2,n,12,13,14)
  call check(a3,b3,c3,d3,e3,f3,n,12,n,14)

  print *, "ok"

end program main


