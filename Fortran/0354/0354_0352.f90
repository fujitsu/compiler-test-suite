subroutine test01(a, b, c, d, n)
  real(8)::a(100), b(100), c(100), d(100)
  integer n
  do i=1,n,10
     a(i) = b(i)
     c(i) = d(i)
  enddo
end subroutine

program main
  real(8)::a(100), b(100), c(100), d(100)
  do i=1, 100
     a(i) = i
     b(i) = i
     c(i) = i
     d(i) = i
  enddo
  call test01(a, b, c, d, 100)
  do i=1,100
     if (a(i) .ne. c(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
