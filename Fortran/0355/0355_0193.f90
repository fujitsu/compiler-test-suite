subroutine sub1(a,b,n)
  real(8),dimension(1:n,1:n,1:n) :: a,b
  
  do l=1,n
  do i=1,n
     do j=1,n
        a(j,i,l) = b(j,i,l)
     enddo
  enddo
  enddo

end subroutine sub1

subroutine sub2(a,b,n)
  real(8),dimension(1:n,1:n,1:n) :: a,b
  
  do l=1,n
  do i=1,n
     do j=1,n,2
        a(j,i,l) = b(j,i,l)
     enddo
  enddo
  enddo

end subroutine sub2

subroutine sub3(a,b,n,k)
  real(8),dimension(1:n,1:n,1:n) :: a,b
  
  do l=1,n
  do i=1,n
     do j=1,n,k
        a(j,i,l) = b(j,i,l)
     enddo
  enddo
  enddo

end subroutine sub3

subroutine sub4(a,b,c,n)
  real(8),dimension(1:n,1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c
  
  do l=1,n
  do i=1,n
     do j=1,n
        a(c(j),i,l) = b(c(j),i,l)
     enddo
  enddo
  enddo

end subroutine sub4

program main
  integer,parameter :: n=32
  real(8),dimension(1:n,1:n,1:n) :: a,b
  integer(4),dimension(1:n) :: c

  a = 0.
  b = 1.
  call sub1(a,b,n)
  do l=1,n
  do i=1,n
  do j=1,n
     if (a(j,i,l) .ne. b(j,i,l)) then
        print *, "NG-1"
     endif
  enddo
  enddo
  enddo

  a = 0.
  b = 1.
  call sub2(a,b,n)
  do l=1,n
  do i=1,n
  do j=1,n,2
     if (a(j,i,l) .ne. b(j,i,l)) then
        print *, "NG-2"
     endif
  enddo
  enddo
  enddo

  a = 0.
  b = 1.
  call sub3(a,b,n,3)
  do l=1,n
  do i=1,n
  do j=1,n,3
     if (a(j,i,l) .ne. b(j,i,l)) then
        print *, "NG-3"
     endif
  enddo
  enddo
  enddo

  a = 0.
  b = 1.
  c = (/(i,i=1,n)/)
  call sub4(a,b,c,n)
  do l=1,n
  do i=1,n
  do j=1,n
     if (a(j,i,l) .ne. b(j,i,l)) then
        print *, "NG-4"
     endif
  enddo
  enddo
  enddo
  
  print *, "OK"
end program main
