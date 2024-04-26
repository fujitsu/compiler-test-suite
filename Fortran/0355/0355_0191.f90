subroutine sub1(a,b,n)
  real(8),dimension(1:n,1:n) :: a,b
  
  do j=1,n
     do i=1,n
        a(j,i) = b(j,i)
     enddo
  enddo

end subroutine sub1

program main
  integer,parameter :: n=127
  real(8),dimension(1:n,1:n) :: a,b

  a = 0.
  b = 1.
  call sub1(a,b,n)
  do i=1,n
  do j=1,n
     if (a(j,i) .ne. b(j,i)) then
        print *, "NG-1"
     endif
  enddo
  enddo

  
  print *, "OK"
end program main
