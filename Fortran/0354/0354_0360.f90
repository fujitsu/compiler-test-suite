subroutine test01(a, n, x)
  real(8)::a(20)
  integer n,x
  do i=1,n
     if (x == 0) then
        a(i) = i
     else
        a(i) = i + 3
     endif
  enddo
end subroutine

program main
  real(8)::a(20), b(20)
  do i=1, 20
     a(i) = i
     b(i) = i
  enddo
  call test01(a, 20, 0)
  do i=1,20
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
