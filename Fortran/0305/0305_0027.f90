subroutine sub1(a,b,n)
  real(8),dimension(1:n,1:n) :: a,b

  do j=1,n
     do i=1,n
        a(i,j) = b(i,j) 
     enddo
  enddo
end subroutine sub1

subroutine sub2(a,b,n)
  real(8),dimension(1:n,1:n) :: a,b

  do j=1,n
     do i=1,n
        a(i,j) = b(i,j) 
     enddo
  enddo
end subroutine sub2

program main
  integer,parameter :: n=10
  real(8),parameter :: res=100.
  real(8),dimension(1:n,1:n) :: a,b
  
  a = 0.
  b = 1.

  call sub1(a,b,n)
  call sub2(a,b,n)
  if (sum(a) /= res) then
     print *, "ng ", "a = ", sum(a)
  endif

  print *, "ok"

end program main

