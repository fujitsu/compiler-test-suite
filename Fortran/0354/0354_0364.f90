subroutine test01(a, n)
  real(8)::a(20)
  integer n
  do i=1,n,2
     a(i) = i 
     a(i+1) = i + 1
  enddo
end subroutine

program main
  real(8)::a(20), b(20)
  do i=1, 20
     a(i) = i
     b(i) = i
  enddo
  call test01(a, 20)
  do i=1,20,1
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
