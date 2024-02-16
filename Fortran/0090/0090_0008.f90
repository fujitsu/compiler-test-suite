program main
  integer(kind=4),parameter   :: S=10
  integer(kind=4),parameter   :: N=60
  integer(kind=4),parameter   :: E=100
  real(kind=8),dimension(1:E) :: a, b, c
  real(kind=8),dimension(1:E) :: kei

  a = (/(i,i=1,E)/)
  b = (/(i,i=1,E)/)
  c = a - b

  call sub(a,b,c,S,N,E)

  kei = maxval(a) - maxval(b)

  where (a /= b)
    kei = kei + 1
  elsewhere
    kei = kei + (a - b)
  endwhere

  if (sum(kei) == 0) then
    print *,'OK'
  else
    print *,'NG'
  endif
end

subroutine sub(a,b,c,S,N,E)
  integer(kind=4) S,N,E
  real(kind=8),dimension(1:E) :: a, b, c

  a(S:N) = a(S-1:N-1) + c(S:N)
  b(S:N) = b(S-1:N-1) + c(S:N)
end subroutine
