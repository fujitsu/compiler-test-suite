subroutine test05(a, b, c, d, e)
  real(8)::a(2), b(2), c(2), d(2), e(2)
  a(1) = ((b(1) * c(1)) * d(1)) - e(1)
  a(2) = ((b(2) * c(2)) * d(2)) - e(2)
  if (a(2) > a(1)) then
     write(*,*) 'OK'
  else
     write(*,*) 'NG'
  endif
end subroutine

program main
  real(8)::a(2), b(2), c(2), d(2), e(2)
  Do i=1, 2
     a(i) = i
     b(i) = i
     c(i) = i
     d(i) = i
     e(i) = i
  Enddo
  call test05(a, b, c, d, e)
end program
