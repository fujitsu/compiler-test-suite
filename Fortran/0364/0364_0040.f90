parameter (ix=10000,nx=1000)
real*8 a(ix),b(ix),c(ix),d(ix),z(ix)
integer*4  result
  a(1:ix) = 0.0
  b(1:ix) = 0.0
  c(1:ix) = 0.0
  d(1:ix) = 0.0
  z(1:ix) = 0.0

  do n=1,nx
    call sub(a,b,c,d,z)
  end do
  result = 0
  do i=1,100
    if( z(i) .ne. -0.75 ) then
      result = 1
    endif
  end do
  if ( result .eq. 0 ) then
    print *," test is ok "
  else
    print *," test is ng "
  endif
  stop
end


subroutine sub (a,b,c,d,z)
parameter (ix=10000,nx=1000)
real*8 a(ix),b(ix),c(ix),d(ix),e(ix)
real*8 f(ix),g(ix),h(ix),o(ix),p(ix)
real*8 q(ix),r(ix),s(ix),t(ix),u(ix)
real*8 v(ix),w(ix),x(ix),y(ix),z(ix)
  e(1:ix) = .5 * (a(1:ix) + 1.)
  f(1:ix) = .5 * (B(1:ix) + 1.)
  g(1:ix) = .5 * (C(1:ix) + 1.)
  h(1:ix) = .5 * (D(1:ix) + 1.)
  o(1:ix) = e(1:ix) * (f(1:ix) + g(1:ix))
  p(1:ix) = f(1:ix) * (g(1:ix) + h(1:ix))
  q(1:ix) = g(1:ix) * (h(1:ix) + e(1:ix))
  r(1:ix) = h(1:ix) * (e(1:ix) + f(1:ix))
  s(1:ix) = o(1:ix) * (p(1:ix) + q(1:ix))
  t(1:ix) = p(1:ix) * (q(1:ix) + r(1:ix))
  u(1:ix) = q(1:ix) * (r(1:ix) + o(1:ix))
  v(1:ix) = r(1:ix) * (o(1:ix) + p(1:ix))
  w(1:ix) = (s(1:ix) * t(1:ix)) + (u(1:ix) * v(1:ix))
  x(1:ix) = w(1:ix) - 1.
  y(1:ix) = w(1:ix) + 1.
  z(1:ix) = x(1:ix) * y(1:ix)
  return
end
