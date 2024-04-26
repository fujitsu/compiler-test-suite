subroutine test01(a, b, n, m)
  real(8)::a(20), b(20)
  integer n,m
  do i=1,n
     a(i) = i
     do j=1,m
        b(j) = j
     enddo
  enddo
end subroutine

program main
  real(8)::a(20), b(20)
  Do i=1, 20
     a(i) = 0
     b(i) = 0
  Enddo
  call test01(a, b, 20, 20)
  do i=1,20
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
