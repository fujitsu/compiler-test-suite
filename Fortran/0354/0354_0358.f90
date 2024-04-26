subroutine test01(a, n)
  real(8)::a(2000)
  integer n
  do i=1,n
     a(i) = i
  enddo
end subroutine

program main
  real(8)::a(2000), b(2000)
  Do i=1, 2000
     a(i) = i
     b(i) = i
  Enddo
!$omp parallel
  call test01(a, 2000)
!$omp end parallel
  do i=1,2000
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program
