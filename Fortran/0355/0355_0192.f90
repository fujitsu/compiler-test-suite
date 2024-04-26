subroutine sub1(a,b,n)
  real(8),dimension(1:n) :: a,b
  
  do j=1,n
        a(j) = b(j)
     enddo

end subroutine sub1

subroutine sub2(a,b,n)
  real(8),dimension(1:n) :: a,b
  
     do j=1,n,2
        a(j) = b(j)
     enddo

end subroutine sub2

subroutine sub3(a,b,n,k)
  real(8),dimension(1:n) :: a,b
  
     do j=1,n,k
        a(j) = b(j)
     enddo

end subroutine sub3

subroutine sub4(a,b,c,n)
  real(8),dimension(1:n) :: a,b
  integer(4),dimension(1:n) :: c
  
     do j=1,n
        a(c(j)) = b(c(j))
     enddo

end subroutine sub4

program main
  integer,parameter :: n=127
  real(8),dimension(1:n) :: a,b
  integer(4),dimension(1:n) :: c

  a = 0.
  b = 1.
  call sub1(a,b,n)
  do j=1,n
     if (a(j) .ne. b(j)) then
        print *, "NG-1"
     endif
  enddo

  a = 0.
  b = 1.
  call sub2(a,b,n)
  do j=1,n,2
     if (a(j) .ne. b(j)) then
        print *, "NG-2"
     endif
  enddo

  a = 0.
  b = 1.
  call sub3(a,b,n,3)
  do j=1,n,3
     if (a(j) .ne. b(j)) then
        print *, "NG-3"
     endif
  enddo

  a = 0.
  b = 1.
  c = (/(i,i=1,n)/)
  call sub4(a,b,c,n)
  do j=1,n
     if (a(j) .ne. b(j)) then
        print *, "NG-4"
     endif
  enddo
  
  print *, "OK"
end program main
