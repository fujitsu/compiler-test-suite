subroutine x_init(x)
  integer,dimension(1:100) :: x
  x = 0
end subroutine x_init
subroutine sub(a,b,c,n,k)
  real(8),dimension(1:n) :: a,b,c
  integer,dimension(1:100) :: x

  call x_init(x)
  do i=1,k
     if(x(100) == 0) then
        a(i) = b(i) / c(i)
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=10
  real(8),dimension(1:n) :: a,b,c

  a = 0.0
  b = 1.0
  c = 0.0

  call sub(a,b,c,n,0)

  if (sum(a) /= 0.) then
     print *, "ng ", "a = ", sum(a)
  else
     print *, "ok"
  endif

end program main
