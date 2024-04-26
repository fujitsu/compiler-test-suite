subroutine fmaddsub(a,b,c,d,e,n)
  real(kind=4),dimension(1:n) :: a,b,c,d,e
  do i=1,n
     a(i) = a(i) + b(i) / c(i) - b(i) * c(i) + c(i) * d(i)
     a(i) = a(i) - b(i) / d(i) + b(i) * d(i) - b(i) * e(i)
  enddo
end subroutine

program main
  integer,parameter :: n=100
  real(kind=4),dimension(1:n) :: a,b,c,d,e
  a = 1.
  b = 1.
  c = 1.
  d = 1.
  e = 1.
  call fmaddsub(a,b,c,d,e,n)
  if (int(sum(a)) == 100) then
    print *,"ok"
  else
    print *,"ng: ",int(sum(a))
  endif
end program
