subroutine test01(a, b, n)
  real(8)::a(100), b(100)
  integer n
  a(1:n:10) = b(1:n:10)
end subroutine

program main
  real(8)::a(100), b(100)
  do i=1, 100
     a(i) = i
     b(i) = i
  enddo
  call test01(a, b, 100)
  do i=1,100
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
