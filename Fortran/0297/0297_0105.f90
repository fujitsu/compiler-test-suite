subroutine sub(a,x,n)
  real(8),dimension(1:n) :: a
  integer :: x,n
  do i=1,10
     if(x == 0) then
      a(i) = i
   endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=10
  real(8),dimension(1:n) :: a
  integer :: x
  real(8),parameter :: res=55.

  x = 0
  a = 0.0

  call sub(a,x,n)

  if (sum(a) /= res) then
     print *, "ng ", "a = ", sum(a)
  else
     print *, "ok"
  endif

end program main
