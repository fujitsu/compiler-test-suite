subroutine sub1(a,b,n)
  real(8),dimension(1:n,1:n,1:n) :: a,b

  do i=1,n
     do j=1,n
     do k=1,n
        a(k,j,i) = b(k,j,i)
     enddo
     enddo

     do j=1,n
     do k=1,n
        a(k,j,i) = b(k,j,i)
     enddo
     enddo

     do j=1,n
     do k=1,n
        a(k,j,i) = b(k,j,i)
     enddo
     enddo
  enddo

end subroutine sub1

subroutine check(a,b,n)
  real(8),dimension(1:n,1:n,1:n) :: a,b

  do i=1,n
     do j=1,n
        do k=1,n
           if (a(k,j,i) .ne. b(k,j,i)) then
              print *, "ng"
           endif
        enddo
     enddo
  enddo

end subroutine check

program main
  integer,parameter :: n = 10

  real(8),dimension(1:n,1:n,1:n) :: a,b

  a = 0.
  b = 1.

  call sub1(a,b,n)
  call check(a,b,n)

  print *, "ok"

end program main
