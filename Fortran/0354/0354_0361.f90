subroutine test01(a, b, n)
  real(8)::a(100), b(100)
  integer n
  do i=1,n
    do j=1,100
      b(j) = j
    enddo
    do j=1,100
      a(j) = j
    enddo
  enddo
end subroutine

program main
  real(8)::a(100), b(100)
  Do i=1, 100
     a(i) = 0
     b(i) = 0
  Enddo
  call test01(a, b, 100)
  do i=1,100
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
