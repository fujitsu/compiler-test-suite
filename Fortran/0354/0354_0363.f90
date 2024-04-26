subroutine test01(a, b, n)
  real(8)::a(100), b(100)
  integer n
  do i=1,n
     if (a(i) .eq. b(i)) then
        a(i) = a(i) + i
     endif
  enddo
end subroutine

program main
  real(8)::a(100), b(100)
  do i=1, 100
     a(i) = 0
     b(i) = 0
  enddo
  call test01(a, b, 100)
  do i=1,100
     if (a(i) .le. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
