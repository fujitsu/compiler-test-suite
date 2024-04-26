subroutine fmaddsub(a,b,c,d,n)
  real(kind=4),dimension(1:n) :: a,b,c,d
  do i=1,n
     a(i) = a(i) + b(i) * c(i)
     a(i) = a(i) - b(i) * d(i)
  enddo
end subroutine

program main
  integer,parameter :: n=100
  real(kind=4),dimension(1:n) :: a,b,c,d
  a = 1.
  b = 1.
  c = 1.
  d = 1.
  call fmaddsub(a,b,c,d,n)
  if (int(sum(a)) == 100) then
    print *,"ok"
  else
    print *,"ng: ",int(sum(a))
  endif
end program
