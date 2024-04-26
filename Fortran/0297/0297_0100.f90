subroutine x_init(x)
  integer,dimension(1:100) :: x
  x = 0
end subroutine x_init
subroutine sub(a,n)
  real(8),dimension(1:n) :: a
  integer,dimension(1:100) :: x

  call x_init(x)
  do i=1,n
     if(x(100) == 0) then
        a(i) = i
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=10
  real(8),dimension(1:n) :: a
  real(8),parameter :: res=55.

  a = 0.0

  call sub(a,n)

  if (sum(a) /= res) then
     print *, "ng ", "a = ", sum(a)
  else
     print *, "ok"
  endif

end program main
