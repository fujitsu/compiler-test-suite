subroutine test03(a, b, c, d)
  real(8)::a(2), b(2), c(2), d(2)
  a(1) = (b(1) * c(1)) + d(1)
  a(2) = (b(1) * c(2)) + d(2)
  if (a(2) > a(1)) then
     write(*,*) 'OK'
  else
     write(*,*) 'NG'
  endif
end subroutine

program main
  real(8)::a(2), b(2), c(2), d(2)
  Do i=1, 2
     a(i) = i
     b(i) = i
     c(i) = i
     d(i) = i
  Enddo
  call test03(a, b, c, d)
end program
