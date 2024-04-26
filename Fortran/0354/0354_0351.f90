subroutine test01(a, b, c, n)
  real(8)::a(20), b(20), c(20)
  integer n
  do i=1,n,1
     a(i) = b(i) + c(i)
     a(i+1) = b(i+1) + c(i+1)
  enddo
end subroutine

program main
  real(8)::a(20), b(20), c(20)
  Do i=1, 20
     a(i) = i
     b(i) = i
     c(i) = i
  Enddo
  call test01(a, b, c, 19)
  do i=1,20,2
     if (a(i+1) .le. a(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
