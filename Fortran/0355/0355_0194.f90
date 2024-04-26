subroutine sub1(a,b,n)
  real(8),dimension(1:n) :: a,b
  
  do j=1,n
     a(j) = b(j)
  enddo

end subroutine sub1

program main
  integer,parameter :: n=127
  real(8),dimension(1:n) :: a,b

  a = 0.
  b = 1.
  call sub1(a,b,n)
  do j=1,n
     if (a(j) .ne. b(j)) then
        print *, "NG-1"
     endif
  enddo

  print *, "OK"
end program main
