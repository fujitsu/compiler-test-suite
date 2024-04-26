subroutine sub(a,b,n)
  real(8),dimension(1:n) :: a,b

  do i=1,n
     a(i) = b(i) 
  enddo
end subroutine sub

program main
  integer,parameter :: n=10
  real(8),parameter :: res=10.
  real(8),dimension(1:n) :: a,b
  
  a = 0.
  b = 1.

  call sub(a,b,n)
  if (sum(a) /= res) then
     print *, "ng ", "a = ", sum(a)
  endif

  print *, "ok"

end program main

