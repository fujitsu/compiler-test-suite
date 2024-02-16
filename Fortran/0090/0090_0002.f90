program main
  integer(kind=4),parameter   :: S=2
  integer(kind=4),parameter   :: N=50
  real(kind=8),dimension(S:N) :: a, b, c
  real(kind=8),dimension(S:N) :: kei

  a(S:N) = (/(i,i=S,N)/)
  b(S:N) = (/(i,i=S,N)/)
  c = a - b

  call sub(a,b,c,S,N)

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

subroutine sub(a,b,c,S,N)
  integer(kind=4) S
  integer(kind=4) N
  real(kind=8),dimension(S:N) :: a, b, c

  a(S:N) = a(S:N) + c(S:N)
  b(S:N) = b(S:N) + c(S:N)
end subroutine
