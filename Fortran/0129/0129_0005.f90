subroutine test05_2(a, b, c, d, e, f, g, h, i, j)
  real(8)::a(2), b(2), c(2), d(2), e(2), f(2), g(2), h(2), i(2), j(2)
  a(1) = ((b(1) * c(1)) * d(1)) - e(1)
  a(2) = ((b(2) * c(2)) * d(2)) - e(2)
  f(1) = ((g(1) + h(1)) * i(1)) - j(1)
  f(2) = ((g(2) + h(2)) * i(2)) - j(2)
  if (a(2) == f(2)) then
     write(*,*) 'OK'
  else
     write(*,*) 'NG'
  endif
end subroutine test05_2

program main
  real(8)::a(2), b(2), c(2), d(2), e(2), f(2), g(2), h(2), j(2), k(2)
  Do i=1, 2
     a(i) = i
     b(i) = i
     c(i) = i
     d(i) = i
     e(i) = i
     f(i) = i
     g(i) = i
     h(i) = i
     j(i) = i
     k(i) = i
  Enddo
  call test05_2(a, b, c, d, e, f, g, h, j, k)
end program
