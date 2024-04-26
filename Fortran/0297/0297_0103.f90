subroutine x_init(x)
  integer,dimension(1:100) :: x
  x = 0
end subroutine x_init
subroutine sub(a,b,c,n)
  real(8),dimension(1:n) :: a
  integer(8) :: b,c
  integer,dimension(1:100) :: x

  call x_init(x)
  do i=1,10
     if(b/c == 1) then
        a(i) = i
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=10
  real(8),dimension(1:n) :: a
  integer(8) :: b,c
  real(8),parameter :: res=55.

  a = 0.0
  b = 1
  c = 1

  call sub(a,b,c,n)

  if (sum(a) /= res) then
     print *, "ng ", "a = ", sum(a)
  else
     print *, "ok"
  endif

end program main
