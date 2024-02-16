subroutine sub1(a,b,n)
  real(8),dimension(1:n,1:n) :: a,b

  do i=1,n
     do j=1,n
        a(j,i) = b(j,i)
     enddo
     do j=1,n
        a(j,i) = b(j,i)
     enddo
  enddo

end subroutine sub1

subroutine sub2(a,b,n)
  real(8),dimension(1:n,1:n) :: a,b

  do i=1,n
     do j=1,13
        a(j,i) = b(j,i)
     enddo
     do j=1,12
        a(j,i) = b(j,i)
     enddo
  enddo

end subroutine sub2

subroutine sub3(a,b,n)
  real(8),dimension(1:n,1:n) :: a,b

  do i=1,n
     do j=1,n
        a(j,i) = b(j,i)
     enddo
     do j=1,12
        a(j,i) = b(j,i)
     enddo
  enddo

end subroutine sub3

subroutine init(a,b,n)
  real(8),dimension(1:n,1:n) :: a,b

  do i=1,n
     do j=1,n
        a(j,i) = 0.
        b(j,i) = 1.
     enddo
  enddo

end subroutine init

subroutine check(a,b,n,nn)
  real(8),dimension(1:n,1:n) :: a,b

  do i=1,n
     do j=1,nn
        if (a(j,i) .ne. b(j,i)) then
           print *, "ng"
        endif
     enddo
  enddo

end subroutine check

program main
  integer,parameter :: n = 20
  real(8),dimension(1:n,1:n) :: a1,b1
  real(8),dimension(1:n,1:n) :: a2,b2
  real(8),dimension(1:n,1:n) :: a3,b3

  call init(a1,b1,n)
  call init(a2,b2,n)
  call init(a3,b3,n)

  call sub1(a1,b1,n)
  call sub2(a2,b2,n)
  call sub3(a3,b3,n)

  call check(a1,b1,n,n)
  call check(a2,b2,n,13)
  call check(a3,b3,n,n)

  print *, "ok"

end program main
